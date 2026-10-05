import 'package:flutter/material.dart';

import '../enums/address_language.dart';
import '../services/np_address_service.dart';
import '../theme/np_address_theme.dart';

/// Shows a searchable modal dialog to select an address entity.
Future<T?> showNpAddressDialog<T>({
  required BuildContext context,
  required String title,
  required List<T> items,
  T? selectedItem,
  AddressLanguage language = AddressLanguage.english,
  String searchHint = 'Search...',
  NpAddressTheme? theme,
}) {
  final effectiveTheme = theme ?? NpAddressThemeScope.of(context);
  return showDialog<T>(
    context: context,
    barrierColor: Colors.black54,
    builder: (ctx) => _NpSearchableModal<T>(
      title: title,
      items: items,
      selectedItem: selectedItem,
      language: language,
      searchHint: searchHint,
      theme: effectiveTheme,
      isBottomSheet: false,
    ),
  );
}

/// Shows a searchable modal bottom sheet to select an address entity.
Future<T?> showNpAddressBottomSheet<T>({
  required BuildContext context,
  required String title,
  required List<T> items,
  T? selectedItem,
  AddressLanguage language = AddressLanguage.english,
  String searchHint = 'Search...',
  NpAddressTheme? theme,
}) {
  final effectiveTheme = theme ?? NpAddressThemeScope.of(context);
  return showModalBottomSheet<T>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.black54,
    builder: (ctx) => _NpSearchableModal<T>(
      title: title,
      items: items,
      selectedItem: selectedItem,
      language: language,
      searchHint: searchHint,
      theme: effectiveTheme,
      isBottomSheet: true,
    ),
  );
}

class _NpSearchableModal<T> extends StatefulWidget {
  final String title;
  final List<T> items;
  final T? selectedItem;
  final AddressLanguage language;
  final String searchHint;
  final NpAddressTheme theme;
  final bool isBottomSheet;

  const _NpSearchableModal({
    required this.title,
    required this.items,
    this.selectedItem,
    required this.language,
    required this.searchHint,
    required this.theme,
    required this.isBottomSheet,
  });

  @override
  State<_NpSearchableModal<T>> createState() => _NpSearchableModalState<T>();
}

class _NpSearchableModalState<T> extends State<_NpSearchableModal<T>> {
  final _service = NpAddressService();
  final _searchController = TextEditingController();
  late List<T> _filteredItems;

  @override
  void initState() {
    super.initState();
    _filteredItems = widget.items;
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final query = _searchController.text.trim().toLowerCase();
    if (query.isEmpty) {
      setState(() => _filteredItems = widget.items);
      return;
    }

    setState(() {
      _filteredItems = widget.items.where((item) {
        final display =
            _service.getDisplayName(item, widget.language).toLowerCase();
        final en =
            _service.getDisplayName(item, AddressLanguage.english).toLowerCase();
        final np =
            _service.getDisplayName(item, AddressLanguage.nepali).toLowerCase();
        return display.contains(query) ||
            en.contains(query) ||
            np.contains(query);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = widget.theme;

    final modalContent = Container(
      decoration: BoxDecoration(
        color: theme.dialogBackgroundColor,
        borderRadius: widget.isBottomSheet
            ? const BorderRadius.vertical(top: Radius.circular(12))
            : theme.borderRadius,
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 20,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: widget.isBottomSheet ? MainAxisSize.min : MainAxisSize.max,
        children: [
          if (widget.isBottomSheet) ...[
            const SizedBox(height: 8),
            Container(
              width: 36,
              height: 4,
              decoration: BoxDecoration(
                color: theme.borderColor,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 12, 10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    style: theme.labelStyle.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(6),
                  onTap: () => Navigator.of(context).pop(),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.close,
                      size: 18,
                      color: theme.iconColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
            child: Container(
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: TextField(
                controller: _searchController,
                style: theme.textStyle,
                decoration: InputDecoration(
                  hintText: widget.searchHint,
                  hintStyle: theme.placeholderStyle,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 18,
                    color: theme.iconColor,
                  ),
                  prefixIconConstraints:
                      const BoxConstraints(minWidth: 36, minHeight: 36),
                  suffixIcon: _searchController.text.isNotEmpty
                      ? InkWell(
                          onTap: () => _searchController.clear(),
                          child: Icon(
                            Icons.clear,
                            size: 16,
                            color: theme.iconColor,
                          ),
                        )
                      : null,
                  suffixIconConstraints:
                      const BoxConstraints(minWidth: 32, minHeight: 32),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Divider(height: 1, color: theme.dividerColor),
          Flexible(
            child: _filteredItems.isEmpty
                ? Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.search_off_rounded,
                          size: 32,
                          color: theme.iconColor,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'No results found.',
                          style: theme.placeholderStyle,
                        ),
                      ],
                    ),
                  )
                : ListView.builder(
                    shrinkWrap: widget.isBottomSheet,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 6),
                    itemCount: _filteredItems.length,
                    itemBuilder: (context, index) {
                      final item = _filteredItems[index];
                      final isSelected = widget.selectedItem == item;
                      final label =
                          _service.getDisplayName(item, widget.language);

                      return InkWell(
                        borderRadius: BorderRadius.circular(6),
                        onTap: () => Navigator.of(context).pop(item),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 9),
                          margin: const EdgeInsets.symmetric(vertical: 1.5),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? theme.itemSelectedColor
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  label,
                                  style: theme.itemTextStyle.copyWith(
                                    fontWeight: isSelected
                                        ? FontWeight.w600
                                        : FontWeight.w400,
                                    color: isSelected
                                        ? theme.itemSelectedTextColor
                                        : null,
                                  ),
                                ),
                              ),
                              if (isSelected)
                                Icon(
                                  Icons.check,
                                  size: 16,
                                  color: theme.itemSelectedTextColor,
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );

    if (widget.isBottomSheet) {
      return SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.72,
          child: modalContent,
        ),
      );
    }

    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: const EdgeInsets.all(16),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 420, maxHeight: 520),
        child: modalContent,
      ),
    );
  }
}
