import 'package:authorization/src/domain/user_model.dart';
import 'package:core/store.dart';

final class UserStore extends BaseNullableStore<UserModel?> {
  @override
  UserModel? get initialValue => null;
}
