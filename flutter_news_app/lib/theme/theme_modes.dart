import "package:flutter/material.dart";

final _base = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  // fontFamily: FontFamily.montserrat,
  // colorScheme: ColorScheme.fromSeed(
  //   seedColor: kThemeSeedColor,
  //   background: kThemeBackgroundColor,
  // ),
  // scaffoldBackgroundColor: kThemeBackgroundColor,
  // extensions: const <ThemeExtension>[
  //   MyColors(
  //     backgroundGradient: kThemeBackgroundGradientColor,
  //     containerBgColor: kThemeContainerBgColor,
  //     borderGradient: kThemeContainerGradient,
  //   ),
  // ],
);

// TextTheme _buildTextTheme(TextTheme base) {
//   return base.copyWith(
//     bodyLarge: base.bodyLarge?.copyWith(color: kThemeTextColor),
//     bodyMedium: base.bodyMedium?.copyWith(color: kThemeTextColor),
//     bodySmall: base.bodySmall?.copyWith(color: kThemeTextColor),
//     labelLarge: base.labelLarge?.copyWith(color: kThemeTextColor),
//     labelMedium: base.labelMedium?.copyWith(color: kThemeTextColor),
//     labelSmall: base.labelSmall?.copyWith(color: kThemeTextColor),
//     titleLarge: base.titleLarge?.copyWith(color: kThemeTextColor),
//     titleMedium: base.titleMedium?.copyWith(color: kThemeTextColor),
//     titleSmall: base.titleSmall?.copyWith(color: kThemeTextColor),
//     headlineLarge: base.headlineLarge?.copyWith(color: kThemeTextColor),
//     headlineMedium: base.headlineMedium?.copyWith(color: kThemeTextColor),
//     headlineSmall: base.headlineSmall?.copyWith(color: kThemeTextColor),
//     displayLarge: base.displayLarge?.copyWith(color: kThemeTextColor),
//     displayMedium: base.displayMedium?.copyWith(color: kThemeTextColor),
//     displaySmall: base.displaySmall?.copyWith(color: kThemeTextColor),
//   );
// }

ThemeData buildTheme() {
  return _base.copyWith(
      // textTheme: _buildTextTheme(_base.textTheme),
      );
}
