/// Immutable model representing a Province (प्रदेश) of Nepal.
///
/// A Province is the top-level administrative division in Nepal's
/// federal structure. There are currently 7 provinces.
class Province {
  /// Unique identifier for this province.
  final int id;

  /// Province name in English.
  final String name;

  /// Province name in Nepali (नेपाली).
  final String nameNp;

  const Province({
    required this.id,
    required this.name,
    required this.nameNp,
  });

  /// Creates a [Province] from a JSON map.
  ///
  /// Expected keys: `id`, `name` (or `text`), `name_np` (or `textNP`).
  factory Province.fromJson(Map<String, dynamic> json) => Province(
        id: json['id'] as int,
        name: (json['name'] ?? json['text']) as String,
        nameNp: (json['name_np'] ?? json['nameNp'] ?? json['textNP']) as String,
      );

  /// Serializes this [Province] to a JSON-compatible map with snake_case keys.
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'name_np': nameNp,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Province && id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'Province(id: $id, name: $name, nameNp: $nameNp)';
}
