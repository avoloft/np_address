import 'package:flutter/material.dart';
import 'package:np_address/np_address.dart';

void main() => runApp(const NpAddressApp());

class NpAddressApp extends StatefulWidget {
  const NpAddressApp({super.key});

  @override
  State<NpAddressApp> createState() => _NpAddressAppState();
}

class _NpAddressAppState extends State<NpAddressApp> {
  bool _isDark = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nepal Address Picker',
      debugShowCheckedModeBanner: false,
      themeMode: _isDark ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF1F5F9),
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF0F172A),
          surface: Color(0xFFFFFFFF),
          onSurface: Color(0xFF0F172A),
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF09090B),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFFAFAFA),
          surface: Color(0xFF18181B),
          onSurface: Color(0xFFFAFAFA),
        ),
      ),
      home: AddressDemoScreen(
        isDark: _isDark,
        onToggleTheme: () => setState(() => _isDark = !_isDark),
      ),
    );
  }
}

class AddressDemoScreen extends StatefulWidget {
  final bool isDark;
  final VoidCallback onToggleTheme;

  const AddressDemoScreen({
    super.key,
    required this.isDark,
    required this.onToggleTheme,
  });

  @override
  State<AddressDemoScreen> createState() => _AddressDemoScreenState();
}

class _AddressDemoScreenState extends State<AddressDemoScreen> {
  final _service = NpAddressService();

  AddressLanguage _language = AddressLanguage.both;
  AddressPickerMode _pickerMode = AddressPickerMode.dropdown;
  double _borderRadius = 8.0;

  Province? _selectedProvince;
  District? _selectedDistrict;
  Municipality? _selectedMunicipality;
  String _selectedLog = 'No selection yet';

  NpAddressTheme get _activeTheme {
    final base =
        widget.isDark ? NpAddressTheme.dark() : NpAddressTheme.light();
    return base.copyWith(
      borderWidth: 0,
      backgroundColor:
          widget.isDark ? const Color(0xFF27272A) : const Color(0xFFF1F5F9),
      borderRadius: BorderRadius.circular(_borderRadius),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = widget.isDark;
    final cardBg = isDark ? const Color(0xFF18181B) : Colors.white;
    final textPrimary = isDark ? const Color(0xFFFAFAFA) : const Color(0xFF0F172A);
    final textSecondary = isDark ? const Color(0xFFA1A1AA) : const Color(0xFF64748B);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: cardBg,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: isDark ? const Color(0xFF27272A) : const Color(0xFFF1F5F9),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Text('🇳🇵', style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'np_address',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: textPrimary,
                  ),
                ),
                Text(
                  'Nepal Administrative Divisions',
                  style: TextStyle(
                    fontSize: 11,
                    color: textSecondary,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            tooltip: 'Toggle Theme',
            icon: Icon(
              isDark ? Icons.light_mode_outlined : Icons.dark_mode_outlined,
              size: 20,
              color: textSecondary,
            ),
            onPressed: widget.onToggleTheme,
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: [
          // Configuration Card
          _buildCard(
            cardBg: cardBg,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Configuration',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: textPrimary,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'LANGUAGE',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: textSecondary,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 6),
                _buildPillBar<AddressLanguage>(
                  isDark: isDark,
                  options: const [
                    _PillOption(AddressLanguage.english, 'English'),
                    _PillOption(AddressLanguage.nepali, 'नेपाली'),
                    _PillOption(AddressLanguage.both, 'Both'),
                  ],
                  selected: _language,
                  onSelected: (val) => setState(() => _language = val),
                ),
                const SizedBox(height: 12),
                Text(
                  'DISPLAY MODE',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: textSecondary,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 6),
                _buildPillBar<AddressPickerMode>(
                  isDark: isDark,
                  options: const [
                    _PillOption(AddressPickerMode.dropdown, 'Dropdown'),
                    _PillOption(AddressPickerMode.dialog, 'Dialog'),
                    _PillOption(AddressPickerMode.bottomSheet, 'Sheet'),
                  ],
                  selected: _pickerMode,
                  onSelected: (val) => setState(() => _pickerMode = val),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CORNER RADIUS',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: textSecondary,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Text(
                      '${_borderRadius.toInt()} px',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: textPrimary,
                      ),
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderThemeData(
                    thumbColor: isDark ? Colors.white : const Color(0xFF0F172A),
                    activeTrackColor: isDark ? Colors.white : const Color(0xFF0F172A),
                    inactiveTrackColor: isDark ? const Color(0xFF27272A) : const Color(0xFFE2E8F0),
                    trackHeight: 2,
                  ),
                  child: Slider(
                    value: _borderRadius,
                    min: 0,
                    max: 20,
                    divisions: 10,
                    onChanged: (v) => setState(() => _borderRadius = v),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),

          // Cascading Picker Card
          _buildCard(
            cardBg: cardBg,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cascading Address Selector',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: textPrimary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Province → District → Local Level',
                  style: TextStyle(fontSize: 12, color: textSecondary),
                ),
                const SizedBox(height: 14),
                NpAddressPicker(
                  key: ValueKey('$_language-$_pickerMode-$_borderRadius-$isDark'),
                  language: _language,
                  pickerMode: _pickerMode,
                  theme: _activeTheme,
                  onProvinceSelected: (p) => setState(() => _selectedProvince = p),
                  onDistrictSelected: (d) => setState(() => _selectedDistrict = d),
                  onMunicipalitySelected: (m) => setState(() => _selectedMunicipality = m),
                  onSelected: (value, level) {
                    setState(() {
                      _selectedLog = 'Selected $level: $value';
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),

          // Modal Pickers Card
          _buildCard(
            cardBg: cardBg,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Searchable Modal Functions',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: textPrimary,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Searchable dialogs and bottom sheets with instant search.',
                  style: TextStyle(fontSize: 12, color: textSecondary),
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _buildButton(
                      isDark: isDark,
                      icon: Icons.search,
                      label: 'District Dialog',
                      onTap: () async {
                        final district = await showNpAddressDialog<District>(
                          context: context,
                          title: 'Select District (जिल्ला)',
                          items: _service.districts,
                          language: _language,
                          theme: _activeTheme,
                        );
                        if (district != null) {
                          setState(() {
                            _selectedDistrict = district;
                            _selectedLog =
                                'District: ${district.name} (${district.nameNp})';
                          });
                        }
                      },
                    ),
                    _buildButton(
                      isDark: isDark,
                      icon: Icons.layers_outlined,
                      label: 'Municipality Sheet',
                      onTap: () async {
                        final municipality =
                            await showNpAddressBottomSheet<Municipality>(
                          context: context,
                          title: 'Select Local Level (स्थानीय तह)',
                          items: _service.municipalities,
                          language: _language,
                          theme: _activeTheme,
                        );
                        if (municipality != null) {
                          setState(() {
                            _selectedMunicipality = municipality;
                            _selectedLog =
                                'Municipality: ${municipality.name} (${municipality.nameNp})';
                          });
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),

          // Selection Output Card
          _buildCard(
            cardBg: cardBg,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PAYLOAD',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: textSecondary,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: isDark ? const Color(0xFF09090B) : const Color(0xFFF8FAFC),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    '{\n'
                    '  "province": ${_selectedProvince != null ? '"${_selectedProvince!.name} (${_selectedProvince!.nameNp})"' : 'null'},\n'
                    '  "district": ${_selectedDistrict != null ? '"${_selectedDistrict!.name} (${_selectedDistrict!.nameNp})"' : 'null'},\n'
                    '  "municipality": ${_selectedMunicipality != null ? '"${_selectedMunicipality!.name} (${_selectedMunicipality!.nameNp})"' : 'null'},\n'
                    '  "event": "$_selectedLog"\n'
                    '}',
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: 12,
                      color: isDark ? const Color(0xFF38BDF8) : const Color(0xFF0369A1),
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildCard({
    required Color cardBg,
    required Widget child,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cardBg,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }

  Widget _buildPillBar<T>({
    required bool isDark,
    required List<_PillOption<T>> options,
    required T selected,
    required ValueChanged<T> onSelected,
  }) {
    final barBg = isDark ? const Color(0xFF09090B) : const Color(0xFFF1F5F9);
    final activeBg = isDark ? const Color(0xFF27272A) : Colors.white;
    final activeText = isDark ? Colors.white : const Color(0xFF0F172A);
    final inactiveText = isDark ? const Color(0xFFA1A1AA) : const Color(0xFF64748B);

    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: barBg,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: options.map((opt) {
          final isSelected = opt.value == selected;
          return Expanded(
            child: InkWell(
              onTap: () => onSelected(opt.value),
              borderRadius: BorderRadius.circular(6),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 7),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isSelected ? activeBg : Colors.transparent,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  opt.label,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                    color: isSelected ? activeText : inactiveText,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildButton({
    required bool isDark,
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    final btnBg = isDark ? const Color(0xFF27272A) : const Color(0xFF0F172A);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(6),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: btnBg,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 14, color: Colors.white),
            const SizedBox(width: 6),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PillOption<T> {
  final T value;
  final String label;

  const _PillOption(this.value, this.label);
}
