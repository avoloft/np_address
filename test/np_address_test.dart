import 'package:flutter_test/flutter_test.dart';
import 'package:np_address/np_address.dart';

void main() {
  late NpAddressService service;

  setUp(() {
    service = NpAddressService();
  });

  group('NpAddressService', () {
    group('data loading', () {
      test('loads all 7 provinces', () {
        expect(service.provinces.length, 7);
      });

      test('loads all 14 zones', () {
        expect(service.zones.length, 14);
      });

      test('loads all 77 districts', () {
        expect(service.districts.length, 77);
      });

      test('loads 753 municipalities', () {
        expect(service.municipalities.length, 753);
      });
    });

    group('lookup by ID', () {
      test('getProvinceById returns correct province', () {
        final province = service.getProvinceById(3);
        expect(province, isNotNull);
        expect(province!.name, 'Bagmati Province');
        expect(province.nameNp, 'बागमती प्रदेश');
      });

      test('getProvinceById returns null for invalid ID', () {
        expect(service.getProvinceById(99), isNull);
      });

      test('getZoneById returns correct zone', () {
        final zone = service.getZoneById(1);
        expect(zone, isNotNull);
        expect(zone!.name, 'Mechi');
        expect(zone.nameNp, 'मेची');
      });

      test('getDistrictById returns correct district', () {
        final district = service.getDistrictById(27);
        expect(district, isNotNull);
        expect(district!.name, 'Kathmandu');
      });

      test('getMunicipalityById returns correct municipality', () {
        final municipality = service.getMunicipalityById(1);
        expect(municipality, isNotNull);
        expect(municipality!.districtId, 1);
      });
    });

    group('relationship queries', () {
      test('getDistrictsByProvince returns correct count for Province 3 (Bagmati)', () {
        final districts = service.getDistrictsByProvince(3);
        expect(districts, isNotEmpty);
        for (final d in districts) {
          expect(d.provinceId, 3);
        }
      });

      test('getDistrictsByProvince returns empty for invalid province', () {
        expect(service.getDistrictsByProvince(99), isEmpty);
      });

      test('getMunicipalitiesByDistrict returns correct items', () {
        final municipalities = service.getMunicipalitiesByDistrict(1);
        expect(municipalities, isNotEmpty);
        for (final m in municipalities) {
          expect(m.districtId, 1);
        }
      });

      test('getDistrictsByZone returns items for zone 5 (Bagmati)', () {
        final districts = service.getDistrictsByZone(5);
        expect(districts, isNotEmpty);
        for (final d in districts) {
          expect(d.zoneId, 5);
        }
      });
    });

    group('lookup by name', () {
      test('getProvinceByName is case-insensitive', () {
        final province = service.getProvinceByName('bagmati province');
        expect(province, isNotNull);
        expect(province!.id, 3);
      });

      test('getProvinceByNameNp returns correct province', () {
        final province = service.getProvinceByNameNp('बागमती प्रदेश');
        expect(province, isNotNull);
        expect(province!.id, 3);
      });

      test('getDistrictByName finds Kathmandu', () {
        final district = service.getDistrictByName('Kathmandu');
        expect(district, isNotNull);
        expect(district!.id, 27);
      });

      test('getDistrictByName returns null for nonexistent name', () {
        expect(service.getDistrictByName('Nonexistent'), isNull);
      });
    });

    group('traversal helpers', () {
      test('getProvinceForDistrict returns correct province', () {
        final kathmandu = service.getDistrictById(27)!;
        final province = service.getProvinceForDistrict(kathmandu);
        expect(province, isNotNull);
        expect(province!.name, 'Bagmati Province');
      });

      test('getZoneForDistrict returns correct zone', () {
        final kathmandu = service.getDistrictById(27)!;
        final zone = service.getZoneForDistrict(kathmandu);
        expect(zone, isNotNull);
        expect(zone!.name, 'Bagmati');
      });

      test('getDistrictForMunicipality returns correct district', () {
        final municipality = service.getMunicipalityById(1)!;
        final district = service.getDistrictForMunicipality(municipality);
        expect(district, isNotNull);
        expect(district!.id, municipality.districtId);
      });

      test('getWardsForMunicipality generates correct ward numbers', () {
        final wards = service.getWardsForMunicipality(1, 10);
        expect(wards.length, 10);
        expect(wards.first.number, 1);
        expect(wards.last.number, 10);
        for (final w in wards) {
          expect(w.municipalityId, 1);
        }
      });
    });
  });

  group('Province model', () {
    test('equality based on id', () {
      const a = Province(id: 1, name: 'A', nameNp: 'ए');
      const b = Province(id: 1, name: 'B', nameNp: 'बी');
      expect(a, equals(b));
    });

    test('fromJson/toJson roundtrip with snake_case', () {
      final json = {'id': 1, 'name': 'Koshi Province', 'name_np': 'कोशी प्रदेश'};
      final province = Province.fromJson(json);
      expect(province.id, 1);
      expect(province.name, 'Koshi Province');
      expect(province.nameNp, 'कोशी प्रदेश');
      expect(province.toJson(), json);
    });

    test('fromJson with legacy keys fallback', () {
      final legacyJson = {'id': 1, 'text': 'Koshi Province', 'textNP': 'कोशी प्रदेश'};
      final province = Province.fromJson(legacyJson);
      expect(province.id, 1);
      expect(province.name, 'Koshi Province');
      expect(province.nameNp, 'कोशी प्रदेश');
    });
  });

  group('Zone model', () {
    test('fromJson/toJson roundtrip with snake_case', () {
      final json = {'id': 1, 'name': 'Mechi', 'name_np': 'मेची'};
      final zone = Zone.fromJson(json);
      expect(zone.id, 1);
      expect(zone.name, 'Mechi');
      expect(zone.nameNp, 'मेची');
      expect(zone.toJson(), json);
    });
  });

  group('District model', () {
    test('fromJson/toJson roundtrip with snake_case', () {
      final json = {
        'id': 27,
        'zone_id': 5,
        'province_id': 3,
        'name': 'Kathmandu',
        'name_np': 'काठमाडौँ',
      };
      final district = District.fromJson(json);
      expect(district.id, 27);
      expect(district.provinceId, 3);
      expect(district.zoneId, 5);
      expect(district.toJson(), json);
    });

    test('fromJson with legacy keys fallback', () {
      final legacyJson = {
        'id': 27,
        'zoneid': 5,
        'stateid': 3,
        'text': 'Kathmandu',
        'textNP': 'काठमाडौँ',
      };
      final district = District.fromJson(legacyJson);
      expect(district.id, 27);
      expect(district.provinceId, 3);
      expect(district.zoneId, 5);
    });
  });

  group('Municipality model', () {
    test('fromJson/toJson roundtrip with snake_case', () {
      final json = {
        'id': 1,
        'district_id': 1,
        'name': 'Aathrai Tribeni Ga. Pa.',
        'name_np': 'आठराई त्रिवेणी गाउँपालिका',
      };
      final municipality = Municipality.fromJson(json);
      expect(municipality.id, 1);
      expect(municipality.districtId, 1);
      expect(municipality.toJson(), json);
    });

    test('fromJson with legacy keys fallback', () {
      final legacyJson = {
        'id': 1,
        'districtid': 1,
        'text': 'Aathrai Tribeni Ga. Pa.',
        'textNP': 'आठराई त्रिवेणी गाउँपालिका',
      };
      final municipality = Municipality.fromJson(legacyJson);
      expect(municipality.id, 1);
      expect(municipality.districtId, 1);
    });
  });

  group('Ward model', () {
    test('equality includes both number and municipalityId', () {
      const a = Ward(number: 1, municipalityId: 1);
      const b = Ward(number: 1, municipalityId: 2);
      expect(a, isNot(equals(b)));
    });

    test('fromJson/toJson roundtrip with snake_case', () {
      final json = {'number': 5, 'municipality_id': 10};
      final ward = Ward.fromJson(json);
      expect(ward.number, 5);
      expect(ward.municipalityId, 10);
      expect(ward.toJson(), json);
    });
  });

  group('AddressLevel enum', () {
    test('has all expected values', () {
      expect(AddressLevel.values, containsAll([
        AddressLevel.all,
        AddressLevel.province,
        AddressLevel.zone,
        AddressLevel.district,
        AddressLevel.municipality,
        AddressLevel.ward,
      ]));
    });
  });

  group('AddressLanguage enum', () {
    test('has english, nepali, both', () {
      expect(AddressLanguage.values, containsAll([
        AddressLanguage.english,
        AddressLanguage.nepali,
        AddressLanguage.both,
      ]));
      expect(AddressLanguage.nepali.includesNepali, isTrue);
      expect(AddressLanguage.both.includesEnglish, isTrue);
      expect(AddressLanguage.both.includesNepali, isTrue);
    });

    test('service getDisplayName formats appropriately', () {
      final province = service.getProvinceById(3)!;
      expect(
        service.getDisplayName(province, AddressLanguage.english),
        'Bagmati Province',
      );
      expect(
        service.getDisplayName(province, AddressLanguage.nepali),
        'बागमती प्रदेश',
      );
      expect(
        service.getDisplayName(province, AddressLanguage.both),
        'Bagmati Province (बागमती प्रदेश)',
      );
    });
  });

  group('AddressPickerMode enum', () {
    test('has dropdown, dialog, bottomSheet', () {
      expect(AddressPickerMode.values, containsAll([
        AddressPickerMode.dropdown,
        AddressPickerMode.dialog,
        AddressPickerMode.bottomSheet,
      ]));
    });
  });
}
