<p align="center">
  <img src="https://raw.githubusercontent.com/avoloft/np_address/main/np_address.webp" height="120" alt="np_address logo" />
</p>

<h1 align="center">np_address</h1>

<p align="center">
  A modern, type-safe administrative division dataset and customizable UI picker for Nepal. Query, search, and pick Provinces, Zones, Districts, Municipalities (Local Levels), and Wards with full English & Nepali (नेपाली) Unicode support.
</p>

<p align="center">
  <a href="https://pub.dev/packages/np_address"><img src="https://img.shields.io/pub/v/np_address.svg" alt="pub package" /></a>
  <a href="test/np_address_test.dart"><img src="https://img.shields.io/badge/tests-35%20passed-brightgreen.svg" alt="tests" /></a>
  <a href="pubspec.yaml"><img src="https://img.shields.io/badge/Dart-%5E3.12.2-blue.svg" alt="Dart" /></a>
  <a href="pubspec.yaml"><img src="https://img.shields.io/badge/Flutter-%3E%3D3.10.0-02569B.svg" alt="Flutter" /></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License: MIT" /></a>
</p>

---

## Features

- 🇳🇵 **Complete & Verified Dataset**: 7 Provinces, 14 Zones, 77 Districts, and 753 Municipalities.
- 🔤 **Bilingual Support**: English (`EN`), Nepali (`नेपाली`), and Bilingual (`Both`).
- 🎨 **Multiple UI Modes**: Inline Dropdown, Searchable Modal Dialog, and Searchable Bottom Sheet.
- ⚡ **Pure Dart Engine**: Fast O(1) lookups, filtering, and relationship queries without Flutter dependencies.
- 🛠️ **Fully Customizable**: Adjust colors, corner radius, padding, and borders with `NpAddressTheme`.

---

## Installation

Add `np_address` to your `pubspec.yaml`:

```yaml
dependencies:
  np_address: ^1.0.0
```

Then run:

```bash
flutter pub get
```

---

## Language Switching Guide

Use `AddressLanguage` to switch how administrative names are displayed:

```dart
// 1. English Only: "Bagmati Province"
NpAddressPicker(
  language: AddressLanguage.english,
  onSelected: (value, level) => print('$level: $value'),
)

// 2. Nepali Only: "बागमती प्रदेश"
NpAddressPicker(
  language: AddressLanguage.nepali,
  onSelected: (value, level) => print('$level: $value'),
)

// 3. Bilingual (Both): "Bagmati Province (बागमती प्रदेश)"
NpAddressPicker(
  language: AddressLanguage.both,
  onSelected: (value, level) => print('$level: $value'),
)
```

### Dynamic Language Switching

```dart
class AddressForm extends StatefulWidget {
  const AddressForm({super.key});

  @override
  State<AddressForm> createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  AddressLanguage _language = AddressLanguage.both;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Language Toggle
        SegmentedButton<AddressLanguage>(
          segments: const [
            ButtonSegment(value: AddressLanguage.english, label: Text('EN')),
            ButtonSegment(value: AddressLanguage.nepali, label: Text('नेपाली')),
            ButtonSegment(value: AddressLanguage.both, label: Text('Both')),
          ],
          selected: {_language},
          onSelectionChanged: (set) => setState(() => _language = set.first),
        ),

        const SizedBox(height: 16),

        // Picker Widget automatically updates
        NpAddressPicker(
          key: ValueKey(_language),
          language: _language,
          onSelected: (value, level) => print('Selected $level: $value'),
        ),
      ],
    );
  }
}
```

---

## UI Presentation Modes

Switch between Dropdown, Modal Dialog, or Bottom Sheet using `AddressPickerMode`:

```dart
// 1. Inline Dropdown (Default)
NpAddressPicker(
  pickerMode: AddressPickerMode.dropdown,
  onSelected: (value, level) => print('$level: $value'),
)

// 2. Searchable Modal Dialog
NpAddressPicker(
  pickerMode: AddressPickerMode.dialog,
  onSelected: (value, level) => print('$level: $value'),
)

// 3. Searchable Bottom Sheet
NpAddressPicker(
  pickerMode: AddressPickerMode.bottomSheet,
  onSelected: (value, level) => print('$level: $value'),
)
```

---

## Standalone Searchable Modals

Trigger searchable popups directly in code with a single line:

```dart
final service = NpAddressService();

// Open Searchable District Dialog
final district = await showNpAddressDialog<District>(
  context: context,
  title: 'Select District',
  items: service.districts,
  language: AddressLanguage.both,
);

// Open Searchable Municipality Bottom Sheet
final municipality = await showNpAddressBottomSheet<Municipality>(
  context: context,
  title: 'Select Local Level',
  items: service.municipalities,
  language: AddressLanguage.both,
);
```

---

## Cascading vs Standalone Selectors

```dart
// All 3 cascading levels (Province -> District -> Local Level)
NpAddressPicker(
  addressLevel: AddressLevel.all,
  onProvinceSelected: (Province? p) => print('Province: ${p?.name}'),
  onDistrictSelected: (District? d) => print('District: ${d?.name}'),
  onMunicipalitySelected: (Municipality? m) => print('Municipality: ${m?.name}'),
)

// Standalone Province selector
NpAddressPicker(
  addressLevel: AddressLevel.province,
  onSelected: (value, level) => print('$level: $value'),
)

// Standalone District selector
NpAddressPicker(
  addressLevel: AddressLevel.district,
  onSelected: (value, level) => print('$level: $value'),
)
```

---

## Pure Dart Query Service

```dart
import 'package:np_address/np_address.dart';

void main() {
  final service = NpAddressService();

  // 1. Get all provinces
  final provinces = service.provinces;

  // 2. Query districts by province (e.g. Province 3 - Bagmati)
  final bagmatiDistricts = service.getDistrictsByProvince(3);

  // 3. Query municipalities by district (e.g. Kathmandu - ID 27)
  final ktmMunicipalities = service.getMunicipalitiesByDistrict(27);

  // 4. Lookups by ID
  final district = service.getDistrictById(27);
  print(district?.name); // Kathmandu

  // 5. Lookups by Name
  final pokhara = service.getMunicipalityByName('Pokhara');
  print(pokhara?.nameNp); // पोखरा

  // 6. Parent Traversal
  final province = service.getProvinceForDistrict(district!);
  print(province?.name); // Bagmati Province
}
```

---

## Custom Theming

```dart
// Apply custom theme directly to widget
NpAddressPicker(
  theme: NpAddressTheme(
    backgroundColor: const Color(0xFFF1F5F9),
    borderWidth: 0,
    borderRadius: BorderRadius.circular(10),
    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
  ),
  onSelected: (value, level) {},
)

// Or provide theme globally across widget subtree
NpAddressThemeScope(
  theme: NpAddressTheme.dark(),
  child: const AddressForm(),
)
```

---

## Event Logging & Callbacks

```dart
NpAddressPicker(
  onSelected: (String value, AddressLevel level) {
    print('[$level] Selected: $value');
  },
  onProvinceSelected: (Province? province) {
    print('Province ID: ${province?.id}, Name: ${province?.name}');
  },
  onDistrictSelected: (District? district) {
    print('District ID: ${district?.id}, Province ID: ${district?.provinceId}');
  },
  onMunicipalitySelected: (Municipality? municipality) {
    print('Municipality ID: ${municipality?.id}, District ID: ${municipality?.districtId}');
  },
)
```

---

## Repository & Issues

- **GitHub**: [https://github.com/avoloft/np_address](https://github.com/avoloft/np_address)
- **Issues**: [https://github.com/avoloft/np_address/issues](https://github.com/avoloft/np_address/issues)

---

## License

MIT License. Copyright (c) 2026 Avoloft Technologies Pvt. Ltd.
