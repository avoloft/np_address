/// Represents administrative division levels for filtering and display.
enum AddressLevel {
  /// Displays and handles all three hierarchical levels
  /// (Province -> District -> Municipality).
  all,

  /// Province level (प्रदेश).
  province,

  /// Historical Zone level (अञ्चल).
  zone,

  /// District level (जिल्ला).
  district,

  /// Municipality / Local level (स्थानीय तह).
  municipality,

  /// Ward level (वडा).
  ward;

  /// Whether this is a single administrative level.
  bool get isSingle => this != AddressLevel.all;
}
