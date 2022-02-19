import 'package:auction_app_design/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController fNameController = TextEditingController();
    bool _isVisible = false;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(2.h),
              child: Container(
                height: 75.h,
                child: Column(children: [
                  Row(
                    children: [
                      Text(
                        'Your Country',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    decoration: InputDecoration(
                      suffixIcon: const Icon(Icons.arrow_drop_down_outlined),
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
                      hintText: 'USA',
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Full Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    controller: fNameController,
                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      hintText: 'contactinfo@gmail.com',
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
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
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      hintText: 'contactinfo@gmail.com',
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
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
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      hintText: 'xxxxxxxxx',
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  RawMaterialButton(
                    constraints: BoxConstraints(minHeight: 5.h, minWidth: 29.w),
                    // padding: EdgeInsets.all(1.h),
                    fillColor: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.h)),
                    onPressed: () {},
                    child: Text(
                      'Sign up',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an Account ?',
                        style: TextStyle(fontSize: 10.sp, color: Colors.black),
                      ),
                      SizedBox(
                        width: 1.5.w,
                      ),
                      InkWell(
                        onTap: (() => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const LoginScreen())))),
                        child: Text(
                          'Sign In',
                          style: TextStyle(fontSize: 11.sp, color: Colors.pink),
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
