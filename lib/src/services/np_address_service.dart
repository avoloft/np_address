import '../data/nepal_data.dart';
import '../enums/address_language.dart';
import '../models/models.dart';

/// Service for querying Nepal's administrative division data.
///
/// Pure Dart service with no Flutter dependency. It provides type-safe access
/// to Province, Zone, District, and Municipality data with relationship-aware
/// queries, search capabilities, and bilingual localization support.
class NpAddressService {
  /// Cached parsed data.
  late final List<Province> _provinces;
  late final List<Zone> _zones;
  late final List<District> _districts;
  late final List<Municipality> _municipalities;

  /// Private lookup maps for O(1) access.
  late final Map<int, Province> _provinceById;
  late final Map<int, Zone> _zoneById;
  late final Map<int, District> _districtById;
  late final Map<int, Municipality> _municipalityById;

  /// Creates a new [NpAddressService] and parses the embedded data.
  ///
  /// Optionally accepts a custom [data] map to use instead of the embedded data.
  NpAddressService({Map<String, dynamic>? data}) {
    final source = data ?? nepalData;
    _parseData(source);
  }

  void _parseData(Map<String, dynamic> source) {
    final provincesList =
        (source['provinces'] ?? source['province']) as List<dynamic>;
    _provinces = provincesList
        .map((e) => Province.fromJson(e as Map<String, dynamic>))
        .toList(growable: false);

    final zonesList = (source['zones'] ?? source['zone']) as List<dynamic>;
    _zones = zonesList
        .map((e) => Zone.fromJson(e as Map<String, dynamic>))
        .toList(growable: false);

    final districtsList =
        (source['districts'] ?? source['district']) as List<dynamic>;
    _districts = districtsList
        .map((e) => District.fromJson(e as Map<String, dynamic>))
        .toList(growable: false);

    final municipalitiesList = (source['municipalities'] ??
        source['municipality'] ??
        source['localLevel']) as List<dynamic>;
    _municipalities = municipalitiesList
        .map((e) => Municipality.fromJson(e as Map<String, dynamic>))
        .toList(growable: false);

    _provinceById = {for (final p in _provinces) p.id: p};
    _zoneById = {for (final z in _zones) z.id: z};
    _districtById = {for (final d in _districts) d.id: d};
    _municipalityById = {for (final m in _municipalities) m.id: m};
  }

  // ---------------------------------------------------------------------------
  // All data accessors
  // ---------------------------------------------------------------------------

  /// Returns all 7 provinces of Nepal.
  List<Province> get provinces => List.unmodifiable(_provinces);

  /// Returns all 14 historical zones of Nepal.
  List<Zone> get zones => List.unmodifiable(_zones);

  /// Returns all 77 districts of Nepal.
  List<District> get districts => List.unmodifiable(_districts);

  /// Returns all 753 municipalities (local levels) of Nepal.
  List<Municipality> get municipalities => List.unmodifiable(_municipalities);

  // ---------------------------------------------------------------------------
  // Lookup by ID
  // ---------------------------------------------------------------------------

  /// Returns the [Province] with the given [id], or `null` if not found.
  Province? getProvinceById(int id) => _provinceById[id];

  /// Returns the [Zone] with the given [id], or `null` if not found.
  Zone? getZoneById(int id) => _zoneById[id];

  /// Returns the [District] with the given [id], or `null` if not found.
  District? getDistrictById(int id) => _districtById[id];

  /// Returns the [Municipality] with the given [id], or `null` if not found.
  Municipality? getMunicipalityById(int id) => _municipalityById[id];

  // ---------------------------------------------------------------------------
  // Relationship queries
  // ---------------------------------------------------------------------------

  /// Returns all districts that belong to the province with [provinceId].
  List<District> getDistrictsByProvince(int provinceId) =>
      _districts.where((d) => d.provinceId == provinceId).toList();

  /// Returns all districts that belong to the zone with [zoneId].
  List<District> getDistrictsByZone(int zoneId) =>
      _districts.where((d) => d.zoneId == zoneId).toList();

  /// Returns all municipalities in the district with [districtId].
  List<Municipality> getMunicipalitiesByDistrict(int districtId) =>
      _municipalities.where((m) => m.districtId == districtId).toList();

  // ---------------------------------------------------------------------------
  // Lookup & Search
  // ---------------------------------------------------------------------------

  /// Returns the [Province] matching the given English [name], or `null`.
  Province? getProvinceByName(String name) {
    final lower = name.toLowerCase();
    return _provinces.cast<Province?>().firstWhere(
          (p) => p!.name.toLowerCase() == lower,
          orElse: () => null,
        );
  }

  /// Returns the [Province] matching the given Nepali [nameNp], or `null`.
  Province? getProvinceByNameNp(String nameNp) =>
      _provinces.cast<Province?>().firstWhere(
            (p) => p!.nameNp == nameNp,
            orElse: () => null,
          );

  /// Returns the [District] matching the given English [name], or `null`.
  District? getDistrictByName(String name) {
    final lower = name.toLowerCase();
    return _districts.cast<District?>().firstWhere(
          (d) => d!.name.toLowerCase() == lower,
          orElse: () => null,
        );
  }

  /// Returns the [District] matching the given Nepali [nameNp], or `null`.
  District? getDistrictByNameNp(String nameNp) =>
      _districts.cast<District?>().firstWhere(
            (d) => d!.nameNp == nameNp,
            orElse: () => null,
          );

  /// Returns the [Municipality] matching the given English [name], or `null`.
  Municipality? getMunicipalityByName(String name) {
    final lower = name.toLowerCase();
    return _municipalities.cast<Municipality?>().firstWhere(
          (m) => m!.name.toLowerCase() == lower,
          orElse: () => null,
        );
  }

  /// Returns the [Municipality] matching the given Nepali [nameNp], or `null`.
  Municipality? getMunicipalityByNameNp(String nameNp) =>
      _municipalities.cast<Municipality?>().firstWhere(
            (m) => m!.nameNp == nameNp,
            orElse: () => null,
          );

  /// Helper to get formatted display name based on [AddressLanguage].
  String getDisplayName(dynamic item, AddressLanguage language) {
    if (item is Province) {
      switch (language) {
        case AddressLanguage.english:
          return item.name;
        case AddressLanguage.nepali:
          return item.nameNp;
        case AddressLanguage.both:
          return '${item.name} (${item.nameNp})';
      }
    }
    if (item is District) {
      switch (language) {
        case AddressLanguage.english:
          return item.name;
        case AddressLanguage.nepali:
          return item.nameNp;
        case AddressLanguage.both:
          return '${item.name} (${item.nameNp})';
      }
    }
    if (item is Municipality) {
      switch (language) {
        case AddressLanguage.english:
          return item.name;
        case AddressLanguage.nepali:
          return item.nameNp;
        case AddressLanguage.both:
          return '${item.name} (${item.nameNp})';
      }
    }
    if (item is Zone) {
      switch (language) {
        case AddressLanguage.english:
          return item.name;
        case AddressLanguage.nepali:
          return item.nameNp;
        case AddressLanguage.both:
          return '${item.name} (${item.nameNp})';
      }
    }
    return item.toString();
  }

  // ---------------------------------------------------------------------------
  // Traversal helpers
  // ---------------------------------------------------------------------------

  /// Returns the [Province] that the given [district] belongs to.
  Province? getProvinceForDistrict(District district) =>
      _provinceById[district.provinceId];

  /// Returns the [Zone] that the given [district] belongs to.
  Zone? getZoneForDistrict(District district) => _zoneById[district.zoneId];

  /// Returns the [District] that the given [municipality] belongs to.
  District? getDistrictForMunicipality(Municipality municipality) =>
      _districtById[municipality.districtId];

  /// Generates a list of [Ward] numbers for a municipality.
  List<Ward> getWardsForMunicipality(int municipalityId, int wardCount) =>
      List.generate(
        wardCount,
        (i) => Ward(number: i + 1, municipalityId: municipalityId),
        growable: false,
      );
}
