import 'package:flutter/widgets.dart';

class AppResponsive {
  const AppResponsive._();

  static bool isCompact(BuildContext context) {
    return MediaQuery.sizeOf(context).width < 600;
  }

  static int productColumns(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width >= 900) return 4;
    if (width >= 600) return 3;
    return 2;
  }
}
