import 'package:flutter/material.dart';

/// Styling configuration for `np_address` components.
class NpAddressTheme {
  final Color backgroundColor;
  final Color borderColor;
  final Color focusedBorderColor;
  final double borderWidth;
  final BorderRadius borderRadius;
  final TextStyle textStyle;
  final TextStyle placeholderStyle;
  final TextStyle labelStyle;
  final TextStyle itemTextStyle;
  final Color iconColor;
  final Color dialogBackgroundColor;
  final Color itemSelectedColor;
  final Color itemSelectedTextColor;
  final Color dividerColor;
  final EdgeInsets padding;
  final double labelSpacing;
  final double fieldSpacing;

  const NpAddressTheme({
    this.backgroundColor = const Color(0xFFF8FAFC),
    this.borderColor = const Color(0xFFE2E8F0),
    this.focusedBorderColor = const Color(0xFF0F172A),
    this.borderWidth = 1.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.textStyle = const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Color(0xFF0F172A),
    ),
    this.placeholderStyle = const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Color(0xFF94A3B8),
    ),
    this.labelStyle = const TextStyle(
      fontSize: 13.0,
      fontWeight: FontWeight.w600,
      color: Color(0xFF334155),
    ),
    this.itemTextStyle = const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Color(0xFF0F172A),
    ),
    this.iconColor = const Color(0xFF64748B),
    this.dialogBackgroundColor = const Color(0xFFFFFFFF),
    this.itemSelectedColor = const Color(0xFFF1F5F9),
    this.itemSelectedTextColor = const Color(0xFF0F172A),
    this.dividerColor = const Color(0xFFF1F5F9),
    this.padding = const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12.0),
    this.labelSpacing = 6.0,
    this.fieldSpacing = 12.0,
  });

  /// Light theme preset.
  factory NpAddressTheme.light() => const NpAddressTheme();

  /// Dark theme preset.
  factory NpAddressTheme.dark() => const NpAddressTheme(
        backgroundColor: Color(0xFF18181B),
        borderColor: Color(0xFF27272A),
        focusedBorderColor: Color(0xFFFAFAFA),
        borderWidth: 1.0,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        textStyle: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          color: Color(0xFFFAFAFA),
        ),
        placeholderStyle: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          color: Color(0xFF71717A),
        ),
        labelStyle: TextStyle(
          fontSize: 13.0,
          fontWeight: FontWeight.w600,
          color: Color(0xFFA1A1AA),
        ),
        itemTextStyle: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
          color: Color(0xFFFAFAFA),
        ),
        iconColor: Color(0xFFA1A1AA),
        dialogBackgroundColor: Color(0xFF09090B),
        itemSelectedColor: Color(0xFF27272A),
        itemSelectedTextColor: Color(0xFFFAFAFA),
        dividerColor: Color(0xFF27272A),
      );

  NpAddressTheme copyWith({
    Color? backgroundColor,
    Color? borderColor,
    Color? focusedBorderColor,
    double? borderWidth,
    BorderRadius? borderRadius,
    TextStyle? textStyle,
    TextStyle? placeholderStyle,
    TextStyle? labelStyle,
    TextStyle? itemTextStyle,
    Color? iconColor,
    Color? dialogBackgroundColor,
    Color? itemSelectedColor,
    Color? itemSelectedTextColor,
    Color? dividerColor,
    EdgeInsets? padding,
    double? labelSpacing,
    double? fieldSpacing,
  }) {
    return NpAddressTheme(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderColor: borderColor ?? this.borderColor,
      focusedBorderColor: focusedBorderColor ?? this.focusedBorderColor,
      borderWidth: borderWidth ?? this.borderWidth,
      borderRadius: borderRadius ?? this.borderRadius,
      textStyle: textStyle ?? this.textStyle,
      placeholderStyle: placeholderStyle ?? this.placeholderStyle,
      labelStyle: labelStyle ?? this.labelStyle,
      itemTextStyle: itemTextStyle ?? this.itemTextStyle,
      iconColor: iconColor ?? this.iconColor,
      dialogBackgroundColor:
          dialogBackgroundColor ?? this.dialogBackgroundColor,
      itemSelectedColor: itemSelectedColor ?? this.itemSelectedColor,
      itemSelectedTextColor:
          itemSelectedTextColor ?? this.itemSelectedTextColor,
      dividerColor: dividerColor ?? this.dividerColor,
      padding: padding ?? this.padding,
      labelSpacing: labelSpacing ?? this.labelSpacing,
      fieldSpacing: fieldSpacing ?? this.fieldSpacing,
    );
  }
}

/// InheritedWidget providing [NpAddressTheme] down the tree.
class NpAddressThemeScope extends InheritedWidget {
  final NpAddressTheme theme;

  const NpAddressThemeScope({
    super.key,
    required this.theme,
    required super.child,
  });

  static NpAddressTheme of(BuildContext context) {
    final scope =
        context.dependOnInheritedWidgetOfExactType<NpAddressThemeScope>();
    return scope?.theme ?? const NpAddressTheme();
  }

  @override
  bool updateShouldNotify(NpAddressThemeScope oldWidget) =>
      theme != oldWidget.theme;
}
