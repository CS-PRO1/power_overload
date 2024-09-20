import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:power_overload/Cubits/auth_cubit.dart';
import 'package:power_overload/Cubits/states.dart';
import 'package:power_overload/View/Main%20Pages/Student/landing_screen.dart';
//import 'package:power_overload/View/Main%20Pages/landing_screen.dart';
import 'package:power_overload/components.dart';
import 'package:power_overload/constants.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  var formkey = GlobalKey<FormState>();
  var firstnamecontroller = TextEditingController();
  var fathernamecontroller = TextEditingController();
  var lastnamecontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocConsumer<AuthCubit, AppStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = AuthCubit().get(context);
          return Scaffold(
            body: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [green400, green100, green500],
                  ),
                ),
                child: Column(
                  children: [
                    Stack(children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.5),
                        height: MediaQuery.of(context).size.height,
                        child: Container(
                          decoration: BoxDecoration(
                              color: bglight,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50.0),
                                  topRight: Radius.circular(50.0))),
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Form(
                                  key: formkey,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Column(
                                      children: [
                                        myTextField(
                                          firstnamecontroller,
                                          context,
                                          'الاسم الأول',
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'أدخل اسمك الأول';
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        myTextField(
                                          fathernamecontroller,
                                          context,
                                          'اسم الأب',
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'أدخل اسم الأب';
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        myTextField(
                                          lastnamecontroller,
                                          context,
                                          'اسم العائلة',
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'أدخل اسم العائلة';
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        myTextField(
                                          passwordcontroller,
                                          context,
                                          'كلمة السر',
                                          obscureText: cubit.ispasswordshown,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return 'الرجاء إدخال كلمة السر';
                                            }
                                            return null;
                                          },
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                          postfixicon: IconButton(
                                            icon: cubit.passwordicon,
                                            onPressed: () {
                                              cubit.controlPasswordVisibility();
                                            },
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 30,
                                        ),
                                        defaultButton(
                                          text: 'تسجيل الدخول',
                                          textsize: 16,
                                          function: () {
                                            //TODO Login Request Function
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        LandingScreen()));
                                          },
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        heightFactor: 1.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Icon(
                            //   CupertinoIcons.tortoise_fill,
                            //   size: 50,
                            //   color: Colors.white,
                            // ),
                            SizedBox(
                              height: 250,
                              width: 250,
                              child: Card(
                                  color: bglight.withAlpha(160),
                                  //shadowColor: cyan600,
                                  //surfaceTintColor: cyan100,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  elevation: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Image(
                                      image: AssetImage(
                                          'assets/logo_textless.png'),
                                    ),
                                  )),
                            ),
                            Text(
                              'تسجيل الدخول',
                              style: TextStyle(
                                  fontSize: 50,
                                  shadows: [
                                    Shadow(
                                        color: Colors.black54,
                                        blurRadius: 10,
                                        offset: Offset(-1, 1))
                                  ],
                                  fontWeight: FontWeight.w700,
                                  color: bglight),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
