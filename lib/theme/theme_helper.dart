import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  // var _appTheme = SharePref().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    // SharePref().setThemeData(_newTheme);
    // Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    return PrimaryColors();
  }

  // PinThemeData _getPinTheme() {
  //   return PinThemeData();
  // }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme = ColorSchemes.primaryColorScheme;
    return ThemeData(
      brightness: Brightness.light,
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.backgroundColor,
      appBarTheme: const AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.blueGray90002,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colorScheme.primary;
          }
          return colorScheme.onSurface;
        }),
        side: const BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.border,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.black.withOpacity(0.8),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
  // PinThemeData pinThemeData() => _getPinTheme();
}

// class ContainerTheme {
//   static EdgeInsets titlePadding({double? vertical}) => EdgeInsets.symmetric(
//       horizontal: AppSize.pageHorizontalPadding, vertical: vertical ?? 0.0);
// }

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray400,
          fontSize: 14,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray400,
          fontSize: 10,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 24,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 12,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        labelMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 10,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = const ColorScheme.light();
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => const Color(0XFF040404);

  // Blacke
  Color get black9001e => const Color(0X1E000000);

  // BlueGray
  Color get blueGray100 => const Color(0XFFD5D6D9);
  Color get blueGray400 => const Color(0XFF838CA3);
  Color get blueGray40001 => const Color(0XFF77838F);
  Color get blueGray800 => const Color(0XFF333747);
  Color get blueGray80001 => const Color(0XFF333746);
  Color get blueGray900 => const Color(0XFF232532);
  Color get blueGray90002 => const Color(0XFF323646);
  Color get agentGrey => const Color(0XFF838DA4);
  Color get darkGrayAgent => const Color(0XFF5C667F);

  // Gray
  Color get gray100 => const Color(0XFFF3F4F6);
  Color get gray300 => const Color(0XFFD9DBDF);
  Color get gray400 => const Color(0XFFC1C7D0);
  Color get gray50 => const Color(0XFFF9FAFB);
  Color get gray60072 => const Color(0X72858585);
  Color get gray800 => const Color(0XFF4C4C4C);
  Color get gray900 => const Color(0XFF202328);
  Color get borderGreyColor => const Color(0xFFDDE1E3);
  Color get agentStrokeGrey => const Color(0xFFD2D5DE);
  Color get lightGrey => const Color(0xFFE1E5EE);
  Color get lightGreyBgColor => const Color(0xFF333746);

  // Indigo
  Color get mainPurple => const Color(0XFF4951A9);

  // White
  Color get whiteA700 => const Color(0XFFFFFFFF);
  Color get whiteBottomBar => const Color(0XFFF3F3F3);

  //Charts
  Color get chartOrange => const Color(0XFFC8932E);

  Color get backgroundColor => const Color(0XFF232632);
  Color get border => const Color(0XFF485370);

  //green Color
  Color get green => const Color(0XFF4CDA9E);

  //yellow Color
  Color get yellow => const Color(0XFFDAC34C);

  //red Color
  Color get red => const Color(0xFFDA544C);
  Color get redDeleteColor => const Color(0XFFF84A3F);

  //disableButtonTextColor Color
  Color get disableButtonTextColor => const Color(0XFF919BB4);
}

// class PinThemeData {
//   PinTheme get underlinePinTheme => PinTheme(
//         shape: PinCodeFieldShape.underline,
//         borderRadius: BorderRadius.circular(8),
//         // fieldHeight: 62,
//         // fieldWidth: 45,
//         activeColor: Colors.white,
//         inactiveColor: Colors.white,
//         selectedColor: Colors.white,
//         selectedFillColor: appTheme.backgroundColor,
//         inactiveFillColor: appTheme.backgroundColor,
//         activeFillColor: appTheme.backgroundColor,
//         // selectedBorderWidth: 1,
//         // inactiveBorderWidth: 1,
//         // activeBorderWidth: 1,
//       );

//   PinTheme get boxPinTheme => PinTheme(
//         shape: PinCodeFieldShape.box,
//         borderRadius: BorderRadius.circular(8),
//         fieldHeight: 62,
//         fieldWidth: 45,
//         activeColor: appTheme.border,
//         inactiveColor: appTheme.border,
//         selectedColor: appTheme.border,
//         selectedFillColor: appTheme.backgroundColor,
//         inactiveFillColor: appTheme.backgroundColor,
//         activeFillColor: appTheme.backgroundColor,
//         selectedBorderWidth: 1,
//         inactiveBorderWidth: 1,
//         activeBorderWidth: 1,
//       );

//   PinTheme get circlePinTheme => PinTheme(
//         shape: PinCodeFieldShape.circle,
//         borderRadius: BorderRadius.circular(5),
//         fieldHeight: 22,
//         fieldWidth: 22,
//         activeColor: appTheme.border,
//         inactiveColor: appTheme.border,
//         selectedColor: appTheme.border,
//         selectedFillColor: appTheme.backgroundColor,
//         inactiveFillColor: appTheme.backgroundColor,
//         activeFillColor: Colors.white,
//       );
// }

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
// PinThemeData get pinCodeTheme => ThemeHelper().pinThemeData();
