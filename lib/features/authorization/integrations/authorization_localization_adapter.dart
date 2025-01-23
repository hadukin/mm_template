import 'package:authorization/authorization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mm_template/generated/locale_keys.g.dart';

class AuthorizationLocalizationAdapterImpl extends LoginLocalizationAdapter {
  @override
  String get appBarTitle => LocaleKeys.authorization_title.tr();

  @override
  String get resetPasswordButton => LocaleKeys.authorization_reset_password.tr();

  @override
  String get signInButton => LocaleKeys.authorization_login.tr();
}
