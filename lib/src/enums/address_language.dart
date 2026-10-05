/// Language mode for displaying address names in widgets and lookups.
enum AddressLanguage {
  /// Displays administrative entity names in English (e.g. "Bagmati Province").
  english,

  /// Displays administrative entity names in Nepali Unicode (e.g. "बागमती प्रदेश").
  nepali,

  /// Displays bilingual format with English and Nepali (e.g. "Bagmati Province (बागमती प्रदेश)").
  both;

  /// Whether Nepali script is included.
  bool get includesNepali => this == AddressLanguage.nepali || this == AddressLanguage.both;

  /// Whether English script is included.
  bool get includesEnglish => this == AddressLanguage.english || this == AddressLanguage.both;
}
