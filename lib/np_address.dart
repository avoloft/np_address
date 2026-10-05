/// Nepal administrative address data and picker package.
///
/// Provides models and query APIs for Province, Zone, District,
/// Municipality (Local Level), and Ward data with English and Nepali Unicode support,
/// alongside cascading Dropdown, Dialog, and BottomSheet address pickers.
///
/// ## Quick Start
///
/// ```dart
/// import 'package:np_address/np_address.dart';
///
/// // 1. Pure Dart Data Layer
/// final service = NpAddressService();
/// final provinces = service.provinces;
/// final districts = service.getDistrictsByProvince(1);
///
/// // 2. Flutter Cascading Dropdown / Dialog / BottomSheet Picker
/// NpAddressPicker(
///   language: AddressLanguage.both,
///   pickerMode: AddressPickerMode.dropdown,
///   onSelected: (value, level) => print('$level: $value'),
/// )
///
/// // 3. Searchable Modal Dialog / Bottom Sheet
/// final selectedDistrict = await showNpAddressBottomSheet<District>(
///   context: context,
///   title: 'Select District',
///   items: service.districts,
/// );
/// ```
library np_address;

// Theme & Styling
export 'src/theme/theme.dart';

// Enums
export 'src/enums/enums.dart';

// Models
export 'src/models/models.dart';

// Services
export 'src/services/services.dart';

// Widgets & Modals
export 'src/widgets/widgets.dart';
