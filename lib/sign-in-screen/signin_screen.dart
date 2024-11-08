import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zoovie/app/event-info/view/event_info.dart';
import 'package:zoovie/component/app_component.dart';
import 'package:zoovie/const/app_color.dart';
import 'package:zoovie/const/resource.dart';
import 'package:zoovie/event-discovery-screen/event_discovery_screen.dart';
import 'package:zoovie/sign-in-screen/component/login_header.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const LoginHeader(
            title: 'Sign in!',
            subtitle: 'Don’t have an account? Create Now',
          ),
          40.height,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20).r,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      20,
                    ),
                    topRight: Radius.circular(
                      20,
                    ),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Phone Number',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              controller: _phoneController,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: Text(
                                    '+1',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: AppColor.greyTextColor,
                                    ),
                                  ),
                                ),
                                hintText: '(123) 456-7891',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your phone number';
                                }
                                if (!RegExp(r'^[0-9]{10}\$').hasMatch(value)) {
                                  return 'Please enter a valid phone number';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Password',
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              controller: _passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                suffixIcon: Icon(Icons.visibility_off),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                }
                                if (value.length < 6) {
                                  return 'Password must be at least 6 characters';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      value: _rememberMe,
                                      onChanged: (value) {
                                        setState(() {
                                          _rememberMe = value ?? false;
                                        });
                                      },
                                      activeColor: AppColor.primaryColor,
                                    ),
                                    Text(
                                      'Remember me',
                                      style: GoogleFonts.inter(
                                        fontSize: 14.sp,
                                        color: AppColor.greyTextColor,
                                      ),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigate to Forgot Password screen
                                  },
                                  child: Text(
                                    'Forgot your password?',
                                    style: GoogleFonts.inter(
                                      fontSize: 14.sp,
                                      color: AppColor.primaryColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 24),
                            AppComponent().button(
                              context,
                              onTap: () {
                                if (_formKey.currentState?.validate() == true) {
                                  // Perform login action
                                }
                              },
                              borderRadius: 12,
                              title: 'Login',
                              color: AppColor.primaryColor,
                            ),
                            const SizedBox(height: 24),
                            Center(
                              child: Text(
                                'OR',
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  color: AppColor.blackColorText,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            AppComponent().button(
                              context,
                              borderColor: Colors.transparent,
                              textColor: AppColor.blackColorText,
                              onTap: () {
                                // Continue as guest action
                                EventDiscoveryScreen().launch(context);
                              },
                              borderRadius: 12,
                              title: 'Continue as a Guest',
                              color: AppColor.lightGreyBgColor,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
