/// Immutable model representing a District (जिल्ला) of Nepal.
///
/// A District is the second level of administrative division, lying under
/// a [Province] (and historically under a [Zone]). Nepal has 77 districts.
class District {
  /// Unique identifier for this district.
  final int id;

  /// The zone ID this district historically belongs to.
  final int zoneId;

  /// The province (state) ID this district belongs to.
  final int provinceId;

  /// District name in English.
  final String name;

  /// District name in Nepali (नेपाली).
  final String nameNp;

  const District({
    required this.id,
    required this.zoneId,
    required this.provinceId,
    required this.name,
    required this.nameNp,
  });

  /// Creates a [District] from a JSON map.
  ///
  /// Expected keys: `id`, `zone_id` (or `zoneid`), `province_id` (or `stateid`), `name` (or `text`), `name_np` (or `textNP`).
  factory District.fromJson(Map<String, dynamic> json) => District(
        id: json['id'] as int,
        zoneId: (json['zone_id'] ?? json['zoneid']) as int,
        provinceId: (json['province_id'] ?? json['state_id'] ?? json['stateid']) as int,
        name: (json['name'] ?? json['text']) as String,
        nameNp: (json['name_np'] ?? json['nameNp'] ?? json['textNP']) as String,
      );

  /// Serializes this [District] to a JSON-compatible map with snake_case keys.
  Map<String, dynamic> toJson() => {
        'id': id,
        'zone_id': zoneId,
        'province_id': provinceId,
        'name': name,
        'name_np': nameNp,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is District && id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() =>
      'District(id: $id, name: $name, nameNp: $nameNp, provinceId: $provinceId)';
}
