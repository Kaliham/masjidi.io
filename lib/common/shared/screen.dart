class CommonScreenData {
  static const double kMobileBreakpoint = 640.0;
  static const double kTabletBreakpoint = 1024.0;
  static const double kDesktopBreakpoint = 1280.0;
  static const BreakPointCheck breakPointCheck = BreakPointCheck();
  static const BreakPointCheck doublePoint = BreakPointCheck(
    kMobileBreakpoint: kMobileBreakpoint,
    kTabletBreakpoint: kTabletBreakpoint,
    kDesktopBreakpoint: kTabletBreakpoint,
  );
}

class BreakPointCheck {
  final double kMobileBreakpoint;
  final double kTabletBreakpoint;
  final double kDesktopBreakpoint;
  const BreakPointCheck({
    this.kMobileBreakpoint = CommonScreenData.kMobileBreakpoint,
    this.kTabletBreakpoint = CommonScreenData.kTabletBreakpoint,
    this.kDesktopBreakpoint = CommonScreenData.kDesktopBreakpoint,
  });
  static bool isMobile(double width) =>
      width < CommonScreenData.kMobileBreakpoint;
  static bool isTablet(double width) =>
      width < CommonScreenData.kTabletBreakpoint;
  static bool isDesktop(double width) =>
      width < CommonScreenData.kDesktopBreakpoint;
}
