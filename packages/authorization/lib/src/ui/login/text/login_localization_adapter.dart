import 'package:core/localization_adapter.dart';

abstract class LoginLocalizationAdapter implements LocalizationAdapter {
  String get appBarTitle;

  String get signInButton;

  String get resetPasswordButton;
}
