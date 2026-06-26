import '../constants/app_constants.dart';

class AppFormatters {
  const AppFormatters._();

  static String price(num value) {
    return '${AppConstants.currencySymbol} ${value.toStringAsFixed(2)}';
  }
}
