import 'package:auction_app_design/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isVisible = false;
  bool arbi = false;
  bool english = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(2.h),
              child: Container(
                height: 60.h,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        RawMaterialButton(
                          constraints:
                              BoxConstraints(minHeight: 4.h, minWidth: 25.w),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.15.h,
                                color:
                                    arbi == true ? Colors.purple : Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(2.h)),
                          onPressed: () {
                            setState(() {
                              arbi = true;
                              english = false;
                            });
                          },
                          child: Text(
                            'Arabic',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp,
                                color:
                                    arbi == true ? Colors.purple : Colors.grey),
                          ),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        RawMaterialButton(
                          constraints:
                              BoxConstraints(minHeight: 4.h, minWidth: 25.w),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 0.15.h,
                                color: english == true
                                    ? Colors.purple
                                    : Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(2.h)),
                          onPressed: () {
                            setState(() {
                              arbi = false;
                              english = true;
                            });
                          },
                          child: Text(
                            'English',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp,
                              color:
                                  english == true ? Colors.purple : Colors.grey,
                            ),
                          ),
                        ),
                      ]),
                      Row(
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        autofocus: false,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(2.h),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(2.h),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.h),
                          ),
                          hintText: 'contactinfo@gmail.com',
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Password',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        obscureText: _isVisible,
                        controller: passwordController,
                        keyboardType: TextInputType.emailAddress,
                        autofocus: false,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            icon: Icon(_isVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(2.h),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(2.h),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.h),
                          ),
                          hintText: 'xxxxxxxxx',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forget Password?',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 12.sp, color: Colors.purpleAccent),
                          ),
                        ],
                      ),
                      RawMaterialButton(
                        constraints:
                            BoxConstraints(minHeight: 5.h, minWidth: 29.w),
                        fillColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.h)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const LoginScreen())));
                        },
                        child: Text(
                          'Login',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Not have an account ?',
                            textAlign: TextAlign.end,
                            style:
                                TextStyle(fontSize: 10.sp, color: Colors.black),
                          ),
                          SizedBox(
                            width: 1.5.w,
                          ),
                          InkWell(
                            onTap: (() => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const CreateAccountScreen())))),
                            child: Text(
                              'Create Account',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontSize: 11.sp, color: Colors.purpleAccent),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                    ]),
              ),
            ),
          )),
    );
  }
}
