/// Immutable model representing a Zone (अञ्चल) of Nepal.
///
/// Nepal historically had 14 zones as an intermediate administrative level
/// between Development Regions and Districts. While zones are no longer
/// actively used in the federal structure, the data is preserved for
/// reference and backward compatibility.
class Zone {
  /// Unique identifier for this zone.
  final int id;

  /// Zone name in English.
  final String name;

  /// Zone name in Nepali (नेपाली).
  final String nameNp;

  const Zone({
    required this.id,
    required this.name,
    required this.nameNp,
  });

  /// Creates a [Zone] from a JSON map.
  ///
  /// Expected keys: `id`, `name` (or `text`), `name_np` (or `textNP`).
  factory Zone.fromJson(Map<String, dynamic> json) => Zone(
        id: json['id'] as int,
        name: (json['name'] ?? json['text']) as String,
        nameNp: (json['name_np'] ?? json['nameNp'] ?? json['textNP']) as String,
      );

  /// Serializes this [Zone] to a JSON-compatible map with snake_case keys.
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'name_np': nameNp,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Zone && id == other.id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'Zone(id: $id, name: $name, nameNp: $nameNp)';
}
