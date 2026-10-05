/// Immutable model representing a Municipality / Local Level (स्थानीय तह) of Nepal.
///
/// A Municipality (also referred to as Local Level) is the third level of
/// administrative division, lying under a [District]. Nepal has 753
/// local levels including Metropolitan Cities, Sub-Metropolitan Cities,
/// Municipalities, and Rural Municipalities (Gaunpalikas).
class Municipality {
  /// Unique identifier for this municipality.
  final int id;

  /// The district ID this municipality belongs to.
  final int districtId;

  /// Municipality name in English.
  final String name;

  /// Municipality name in Nepali (नेपाली).
  final String nameNp;

  const Municipality({
    required this.id,
    required this.districtId,
    required this.name,
    required this.nameNp,
  });

  /// Creates a [Municipality] from a JSON map.
  ///
  /// Expected keys: `id`, `district_id` (or `districtid`), `name` (or `text`), `name_np` (or `textNP`).
  factory Municipality.fromJson(Map<String, dynamic> json) => Municipality(
        id: json['id'] as int,
        districtId: (json['district_id'] ?? json['districtid']) as int,
        name: (json['name'] ?? json['text']) as String,
        nameNp: (json['name_np'] ?? json['nameNp'] ?? json['textNP']) as String,
      );

  /// Serializes this [Municipality] to a JSON-compatible map with snake_case keys.
  Map<String, dynamic> toJson() => {
        'id': id,
        'district_id': districtId,
        'name': name,
        'name_np': nameNp,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Municipality && id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() =>
      'Municipality(id: $id, name: $name, nameNp: $nameNp, districtId: $districtId)';
}
