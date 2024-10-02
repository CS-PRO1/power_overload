import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_overload/Cubits/states.dart';
import 'package:power_overload/Services/Cache/cache_helper.dart';

class AuthCubit extends Cubit<AppStates> {
  AuthCubit() : super(AppInitState());
  AuthCubit get(context) => BlocProvider.of(context);

// Show/Hide Password
  bool ispasswordshown = false;
  var passwordicon = Icon(CupertinoIcons.eye_slash_fill);
  void controlPasswordVisibility() {
    if (ispasswordshown) {
      ispasswordshown = false;
      passwordicon = Icon(CupertinoIcons.eye_slash_fill);
    } else {
      ispasswordshown = true;
      passwordicon = Icon(CupertinoIcons.eye_fill);
    }
    emit(PasswordShowState());
  }
}

//Request Login
void loginRequest() {
  //TODO implement login request
  CacheHelper.setString(
      'role', 'admin'); //TODO add role from user model to cache
}
