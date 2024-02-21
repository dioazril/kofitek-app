import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:google_fonts/google_fonts.dart';
// Theme config for FlexColorScheme version 7.2.x. Make sure you use
// same or higher package version, but still same major version. If you
// use a lower package version, some properties may not be supported.
// In that case remove them after copying this theme to your app.

final lightTheme = FlexThemeData.light(
  scheme: FlexScheme.espresso,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 7,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    chipSchemeColor: SchemeColor.scrim,
    drawerElevation: 20.0,
    drawerWidth: 240.0,
    navigationRailIndicatorSchemeColor: SchemeColor.primaryContainer,
    navigationRailIndicatorOpacity: 0.60,
    drawerIndicatorSchemeColor: SchemeColor.primaryContainer,
    drawerIndicatorOpacity: 0.8,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  fontFamily: GoogleFonts.robotoCondensed().fontFamily,
);

final darkTheme = FlexThemeData.dark(
  scheme: FlexScheme.espresso,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 13,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    chipSchemeColor: SchemeColor.scrim,
    drawerElevation: 20.0,
    drawerWidth: 240.0,
    navigationRailIndicatorSchemeColor: SchemeColor.primaryContainer,
    navigationRailIndicatorOpacity: 0.80,
    drawerIndicatorSchemeColor: SchemeColor.primaryContainer,
    drawerIndicatorOpacity: 0.8,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  fontFamily: GoogleFonts.robotoCondensed().fontFamily,
);
// If you do not have a themeMode switch, uncomment this line
// to let the device system mode control the theme mode:
// themeMode: ThemeMode.system,
