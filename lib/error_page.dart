import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_flutter_application/shared_file.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key,}) : super(key: key);
  

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background login.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [
              SizedBox(
                height: 239.h,
              ),
              Center(
                child: Container(
                  height: 452.h,
                  width: 352.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 36.w, right: 40.w, top: 14.h),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 17.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    'LOGIN',
                                    style: TextStyle(
                                      color: slemTextColor,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Container(
                                    width: 68.w,
                                    height: 1.h,
                                    color: slemTextColor,
                                  ),
                                ],
                              ),
                              Container(
                                width: 1.w,
                                height: 27.h,
                                color: slemTextColor,
                              ),
                              TextButton(
                                onPressed: () {
                                },
                                child: const Text(
                                  'SIGNUP',
                                  style: TextStyle(color: slemTextColor),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 43.h),
                          SizedBox(
                            height: 40.h,
                            width: 276.w,
                            child: TextFormField(
                              validator: (value) {
                                if (value == null) {
                                  return 'Enter your email';
                                } else if (RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                                  return null;
                                } else {
                                  return 'Enter valid email';
                                }
                              },
                              controller: _userNameController,
                              decoration: textInputDecoration.copyWith(
                                contentPadding: EdgeInsets.zero,
                                prefixIcon: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 11.h, horizontal: 8.w),
                                  child: Text(
                                    'email:',
                                    style: slemTextStyle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 57.h),
                          SizedBox(
                            height: 40.h,
                            width: 276.w,
                            child: TextFormField(
                              validator: (value) {
                                if (value!.length < 8) {
                                  return 'Password must be greater than 8\ncharacters';
                                }
                              },
                              controller: _passwordController,
                              obscureText: true,
                              decoration: textInputDecoration.copyWith(
                                contentPadding: EdgeInsets.zero,
                                prefixIcon: Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 11.h, horizontal: 8.w),
                                  child: Text(
                                    'Password:',
                                    style: slemTextStyle,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password?',
                                style: slemTextStyle,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            height: 40.h,
                            width: 150.w,
                            decoration: BoxDecoration(
                              color: slemTextColor,
                              borderRadius: BorderRadius.circular(16.r),
                            ),
                            child: TextButton(
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  email = _userNameController.text;
                                  password = _passwordController.text;
                                  print(email);
                                  print(password);
                                  
                                  
                                }
                              },
                              child: const Text(
                                'Sign In',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
