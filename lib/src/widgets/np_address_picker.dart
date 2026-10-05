import 'package:flutter/material.dart';

import '../enums/address_language.dart';
import '../enums/address_level.dart';
import '../enums/address_picker_mode.dart';
import '../models/models.dart';
import '../services/np_address_service.dart';
import '../theme/np_address_theme.dart';
import 'np_address_modal.dart';

/// Callback fired when an address value is selected with its [AddressLevel].
typedef AddressSelectionCallback = void Function(
  String value,
  AddressLevel level,
);

/// A customizable Nepal administrative address picker widget.
///
/// Supports cascading or standalone selection with dropdown, modal dialog,
/// and bottom sheet modes in English, Nepali, or bilingual display.
class NpAddressPicker extends StatefulWidget {
  /// The level of administrative address dropdown(s) to display.
  final AddressLevel addressLevel;

  /// Presentation mode: [AddressPickerMode.dropdown], [AddressPickerMode.dialog],
  /// or [AddressPickerMode.bottomSheet].
  final AddressPickerMode pickerMode;

  /// Language display format: [AddressLanguage.english],
  /// [AddressLanguage.nepali], or [AddressLanguage.both].
  final AddressLanguage language;

  /// Custom theme styling for this picker widget.
  /// If `null`, inherits from [NpAddressThemeScope] or defaults to [NpAddressTheme.light].
  final NpAddressTheme? theme;

  /// Optional fixed width for the input fields.
  final double? width;

  /// Callback fired whenever an address value is selected.
  final AddressSelectionCallback? onSelected;

  /// Typed callback when a [Province] is selected.
  final ValueChanged<Province?>? onProvinceSelected;

  /// Typed callback when a [District] is selected.
  final ValueChanged<District?>? onDistrictSelected;

  /// Typed callback when a [Municipality] is selected.
  final ValueChanged<Municipality?>? onMunicipalitySelected;

  /// Custom label for the Province field.
  final String? provinceLabel;

  /// Custom label for the District field.
  final String? districtLabel;

  /// Custom label for the Municipality field.
  final String? municipalityLabel;

  /// Custom placeholder for the Province field.
  final String? provincePlaceholder;

  /// Custom placeholder for the District field.
  final String? districtPlaceholder;

  /// Custom placeholder for the Municipality field.
  final String? municipalityPlaceholder;

  /// When `true`, automatically selects the first item if no initial value is provided.
  final bool autoSelectFirstItem;

  /// Whether to show a clear button when an item is selected.
  final bool showClearButton;

  /// Initial selected Province value or name.
  final String? provinceInitialValue;

  /// Initial selected District value or name.
  final String? districtInitialValue;

  /// Initial selected Municipality value or name.
  final String? municipalityInitialValue;

  /// Backward-compatible flag to show Nepali text.
  final bool useNepaliText;

  /// Optional decoration override for compatibility with Material forms.
  final InputDecoration? decoration;

  /// Padding around each field.
  final EdgeInsets? contentPadding;

  /// Optional text style.
  final TextStyle? style;

  /// Alignment for dropdown items.
  final AlignmentDirectional? alignmentDirectional;

  /// Cross-axis alignment for dropdown menu items.
  final CrossAxisAlignment? itemsCrossAxisAlignment;

  const NpAddressPicker({
    super.key,
    this.addressLevel = AddressLevel.all,
    this.pickerMode = AddressPickerMode.dropdown,
    this.language = AddressLanguage.english,
    this.theme,
    this.width,
    this.onSelected,
    this.onProvinceSelected,
    this.onDistrictSelected,
    this.onMunicipalitySelected,
    this.provinceLabel,
    this.districtLabel,
    this.municipalityLabel,
    this.provincePlaceholder,
    this.districtPlaceholder,
    this.municipalityPlaceholder,
    this.autoSelectFirstItem = false,
    this.showClearButton = true,
    this.provinceInitialValue,
    this.districtInitialValue,
    this.municipalityInitialValue,
    this.useNepaliText = false,
    this.decoration,
    this.contentPadding,
    this.style,
    this.alignmentDirectional,
    this.itemsCrossAxisAlignment,
  });

  @override
  State<NpAddressPicker> createState() => _NpAddressPickerState();
}

class _NpAddressPickerState extends State<NpAddressPicker> {
  final _service = NpAddressService();

  Province? _selectedProvince;
  District? _selectedDistrict;
  Municipality? _selectedMunicipality;

  AddressLanguage get _effectiveLanguage =>
      widget.useNepaliText ? AddressLanguage.nepali : widget.language;

  @override
  void initState() {
    super.initState();
    _initInitialValues();
  }

  void _initInitialValues() {
    if (widget.provinceInitialValue != null) {
      _selectedProvince = _service.getProvinceByName(widget.provinceInitialValue!) ??
          _service.getProvinceByNameNp(widget.provinceInitialValue!);
    }
    if (widget.districtInitialValue != null) {
      _selectedDistrict = _service.getDistrictByName(widget.districtInitialValue!) ??
          _service.getDistrictByNameNp(widget.districtInitialValue!);
    }
    if (widget.municipalityInitialValue != null) {
      _selectedMunicipality =
          _service.getMunicipalityByName(widget.municipalityInitialValue!) ??
              _service.getMunicipalityByNameNp(widget.municipalityInitialValue!);
    }
  }

  String _provinceLabelText() =>
      widget.provinceLabel ??
      (_effectiveLanguage.includesNepali ? 'प्रदेश (Province)' : 'Province');

  String _districtLabelText() =>
      widget.districtLabel ??
      (_effectiveLanguage.includesNepali ? 'जिल्ला (District)' : 'District');

  String _municipalityLabelText() =>
      widget.municipalityLabel ??
      (_effectiveLanguage.includesNepali
          ? 'स्थानीय तह (Local Level)'
          : 'Local Level');

  String _provincePlaceholderText() =>
      widget.provincePlaceholder ??
      (_effectiveLanguage.includesNepali ? 'प्रदेश छान्नुहोस्' : 'Select province...');

  String _districtPlaceholderText() =>
      widget.districtPlaceholder ??
      (_effectiveLanguage.includesNepali ? 'जिल्ला छान्नुहोस्' : 'Select district...');

  String _municipalityPlaceholderText() =>
      widget.municipalityPlaceholder ??
      (_effectiveLanguage.includesNepali ? 'स्थानीय तह छान्नुहोस्' : 'Select local level...');

  Widget _buildField<T>({
    required List<T> items,
    required String label,
    required String placeholder,
    required T? selectedItem,
    required AddressLevel level,
    required ValueChanged<T?> onChanged,
    required NpAddressTheme theme,
  }) {
    final hasSelection = selectedItem != null;
    final selectedText = hasSelection
        ? _service.getDisplayName(selectedItem, _effectiveLanguage)
        : '';

    // If modal dialog or bottom sheet
    if (widget.pickerMode == AddressPickerMode.dialog ||
        widget.pickerMode == AddressPickerMode.bottomSheet) {
      return Padding(
        padding: widget.contentPadding ??
            EdgeInsets.only(bottom: theme.fieldSpacing),
        child: SizedBox(
          width: widget.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(label, style: theme.labelStyle),
              SizedBox(height: theme.labelSpacing),
              InkWell(
                borderRadius: theme.borderRadius,
                onTap: () async {
                  final T? result = widget.pickerMode ==
                          AddressPickerMode.dialog
                      ? await showNpAddressDialog<T>(
                          context: context,
                          title: label,
                          items: items,
                          selectedItem: selectedItem,
                          language: _effectiveLanguage,
                          theme: theme,
                        )
                      : await showNpAddressBottomSheet<T>(
                          context: context,
                          title: label,
                          items: items,
                          selectedItem: selectedItem,
                          language: _effectiveLanguage,
                          theme: theme,
                        );

                  if (result != null) {
                    onChanged(result);
                    final displayName =
                        _service.getDisplayName(result, _effectiveLanguage);
                    widget.onSelected?.call(displayName, level);
                  }
                },
                child: Container(
                  padding: theme.padding,
                  decoration: BoxDecoration(
                    color: theme.backgroundColor,
                    borderRadius: theme.borderRadius,
                    border: Border.all(
                      color: hasSelection
                          ? theme.focusedBorderColor
                          : theme.borderColor,
                      width: theme.borderWidth,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          hasSelection ? selectedText : placeholder,
                          style: hasSelection
                              ? theme.textStyle
                              : theme.placeholderStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (hasSelection && widget.showClearButton)
                        InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {
                            onChanged(null);
                            setState(() {});
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Icon(
                              Icons.close,
                              size: 16,
                              color: theme.iconColor,
                            ),
                          ),
                        ),
                      Icon(
                        Icons.unfold_more_rounded,
                        size: 18,
                        color: theme.iconColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // Dropdown selector
    final stringItems = items
        .map((e) => _service.getDisplayName(e, _effectiveLanguage))
        .toList();

    String? currentVal;
    if (selectedItem != null) {
      currentVal = _service.getDisplayName(selectedItem, _effectiveLanguage);
    } else if (widget.autoSelectFirstItem && stringItems.isNotEmpty) {
      currentVal = stringItems.first;
    }

    return Padding(
      padding: widget.contentPadding ??
          EdgeInsets.only(bottom: theme.fieldSpacing),
      child: SizedBox(
        width: widget.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(label, style: theme.labelStyle),
            SizedBox(height: theme.labelSpacing),
            Container(
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: theme.borderRadius,
                border: Border.all(
                  color: hasSelection
                      ? theme.focusedBorderColor
                      : theme.borderColor,
                  width: theme.borderWidth,
                ),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String?>(
                  value: stringItems.contains(currentVal) ? currentVal : null,
                  hint: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      placeholder,
                      style: theme.placeholderStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  isExpanded: true,
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.unfold_more_rounded,
                      size: 18,
                      color: theme.iconColor,
                    ),
                  ),
                  dropdownColor: theme.dialogBackgroundColor,
                  borderRadius: theme.borderRadius,
                  style: theme.textStyle,
                  items: stringItems.map((title) {
                    final isItemActive = title == currentVal;
                    return DropdownMenuItem<String?>(
                      value: title,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Text(
                          title,
                          style: theme.itemTextStyle.copyWith(
                            fontWeight: isItemActive
                                ? FontWeight.w600
                                : FontWeight.w400,
                            color: isItemActive
                                ? theme.itemSelectedTextColor
                                : null,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    if (newValue == null) {
                      onChanged(null);
                      return;
                    }
                    final item = items.firstWhere(
                      (e) =>
                          _service.getDisplayName(e, _effectiveLanguage) ==
                          newValue,
                    );
                    onChanged(item);
                    widget.onSelected?.call(newValue, level);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = widget.theme ?? NpAddressThemeScope.of(context);

    switch (widget.addressLevel) {
      case AddressLevel.province:
        return _buildField<Province>(
          items: _service.provinces,
          label: _provinceLabelText(),
          placeholder: _provincePlaceholderText(),
          selectedItem: _selectedProvince,
          level: AddressLevel.province,
          theme: theme,
          onChanged: (p) {
            setState(() => _selectedProvince = p);
            widget.onProvinceSelected?.call(p);
          },
        );

      case AddressLevel.zone:
        return _buildField<Zone>(
          items: _service.zones,
          label: _effectiveLanguage.includesNepali ? 'अञ्चल (Zone)' : 'Zone',
          placeholder: 'Select zone...',
          selectedItem: null,
          level: AddressLevel.zone,
          theme: theme,
          onChanged: (_) {},
        );

      case AddressLevel.district:
        return _buildField<District>(
          items: _service.districts,
          label: _districtLabelText(),
          placeholder: _districtPlaceholderText(),
          selectedItem: _selectedDistrict,
          level: AddressLevel.district,
          theme: theme,
          onChanged: (d) {
            setState(() => _selectedDistrict = d);
            widget.onDistrictSelected?.call(d);
          },
        );

      case AddressLevel.municipality:
        return _buildField<Municipality>(
          items: _service.municipalities,
          label: _municipalityLabelText(),
          placeholder: _municipalityPlaceholderText(),
          selectedItem: _selectedMunicipality,
          level: AddressLevel.municipality,
          theme: theme,
          onChanged: (m) {
            setState(() => _selectedMunicipality = m);
            widget.onMunicipalitySelected?.call(m);
          },
        );

      case AddressLevel.ward:
        return const SizedBox.shrink();

      case AddressLevel.all:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // 1. Province Selector
            _buildField<Province>(
              items: _service.provinces,
              label: _provinceLabelText(),
              placeholder: _provincePlaceholderText(),
              selectedItem: _selectedProvince,
              level: AddressLevel.province,
              theme: theme,
              onChanged: (p) {
                setState(() {
                  _selectedProvince = p;
                  _selectedDistrict = null;
                  _selectedMunicipality = null;
                });
                widget.onProvinceSelected?.call(p);
                widget.onDistrictSelected?.call(null);
                widget.onMunicipalitySelected?.call(null);
              },
            ),

            // 2. District Selector (filtered by selected province)
            _buildField<District>(
              items: _selectedProvince != null
                  ? _service.getDistrictsByProvince(_selectedProvince!.id)
                  : _service.districts,
              label: _districtLabelText(),
              placeholder: _districtPlaceholderText(),
              selectedItem: _selectedDistrict,
              level: AddressLevel.district,
              theme: theme,
              onChanged: (d) {
                setState(() {
                  _selectedDistrict = d;
                  _selectedMunicipality = null;
                });
                widget.onDistrictSelected?.call(d);
                widget.onMunicipalitySelected?.call(null);
              },
            ),

            // 3. Municipality Selector (filtered by selected district)
            _buildField<Municipality>(
              items: _selectedDistrict != null
                  ? _service
                      .getMunicipalitiesByDistrict(_selectedDistrict!.id)
                  : _service.municipalities,
              label: _municipalityLabelText(),
              placeholder: _municipalityPlaceholderText(),
              selectedItem: _selectedMunicipality,
              level: AddressLevel.municipality,
              theme: theme,
              onChanged: (m) {
                setState(() => _selectedMunicipality = m);
                widget.onMunicipalitySelected?.call(m);
              },
            ),
          ],
        );
    }
  }
}
