/// Represents a ward number within a [Municipality].
///
/// Ward is the lowest administrative unit in Nepal's federal structure.
/// Each municipality is divided into a number of wards, typically
/// ranging from 5 to 35 depending on the municipality type.
class Ward {
  /// The ward number (1-based).
  final int number;

  /// The municipality ID this ward belongs to.
  final int municipalityId;

  const Ward({
    required this.number,
    required this.municipalityId,
  });

  /// Creates a [Ward] from a JSON map.
  factory Ward.fromJson(Map<String, dynamic> json) => Ward(
        number: json['number'] as int,
        municipalityId: (json['municipality_id'] ?? json['municipalityId']) as int,
      );

  /// Serializes this [Ward] to a JSON-compatible map with snake_case keys.
  Map<String, dynamic> toJson() => {
        'number': number,
        'municipality_id': municipalityId,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Ward &&
          number == other.number &&
          municipalityId == other.municipalityId;

  @override
  int get hashCode => Object.hash(number, municipalityId);

  @override
  String toString() =>
      'Ward(number: $number, municipalityId: $municipalityId)';
}
