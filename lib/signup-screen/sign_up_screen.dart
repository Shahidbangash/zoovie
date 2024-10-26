import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zoovie/const/app_color.dart';
import 'package:zoovie/const/resource.dart';
import 'package:zoovie/profile-screen/component/profile_tab_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
          backgroundColor: AppColor.whiteColor,
          elevation: 0,
          leading: const BackButton(
            color: AppColor.blackColortext,
          )),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: [
                const Text('Create Account',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                const SizedBox(height: 5),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColor.greyTextColor,
                  ),
                ),
                const SizedBox(height: 30),
                // FullName.
                AuthField(
                  title: 'Full Name',
                  hintText: 'Enter your name',
                  controller: _nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Name is required';
                    } else if (!RegExp(r'^[a-zA-Z ]+ $').hasMatch(value)) {
                      return 'Please enter a valid name';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 15),
                // Email Field.
                AuthField(
                  title: 'E-mail',
                  hintText: 'Enter your email address',
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    }
                    // else if (!value.isEmail) {
                    //   return 'Invalid email address';
                    // }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 15),
                // Password Field.
                AuthField(
                  title: 'Password',
                  hintText: 'Enter your password',
                  controller: _passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    } else if (value.length < 8) {
                      return 'Password should be at least 8 characters long';
                    }
                    return null;
                  },
                  isPassword: true,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                ),
                const SizedBox(height: 30),
                // PrimaryButton(
                //   onTap: () {
                //     if (_formKey.currentState!.validate()) {}
                //   },
                //   text: 'Create An Account',
                // ),
                ProfileSCreenComponent()
                    .button(context, title: 'create an account', onTap: () {}),
                const SizedBox(height: 30),
                const TextWithDivider(),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomSocialButton(
                      onTap: () {},
                      icon: R.ASSETS_GOOGLE_PNG,
                    ),
                    CustomSocialButton(
                      onTap: () {},
                      icon: R.ASSETS_APPLE_PNG,
                    ),
                    CustomSocialButton(
                        onTap: () {}, icon: R.ASSETS_FACEBOOK_PNG),
                  ],
                ),
                const SizedBox(height: 20),
                const AgreeTermsTextCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AgreeTermsTextCard extends StatelessWidget {
  const AgreeTermsTextCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: RichText(
        text: TextSpan(
          text: 'By signing up you agree to our ',
          style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColor.primaryColor),
          children: [
            TextSpan(
                text: 'Terms',
                recognizer: TapGestureRecognizer()..onTap = () {},
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryColor)),
            const TextSpan(
                text: ' and ',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryColor)),
            TextSpan(
                text: 'Conditions of Use',
                recognizer: TapGestureRecognizer()..onTap = () {},
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.primaryColor)),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class CustomSocialButton extends StatefulWidget {
  final String icon;
  final VoidCallback onTap;
  const CustomSocialButton({
    required this.icon,
    required this.onTap,
    super.key,
  });

  @override
  State<CustomSocialButton> createState() => _CustomSocialButtonState();
}

class _CustomSocialButtonState extends State<CustomSocialButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final Duration _animationDuration = const Duration(milliseconds: 300);
  final Tween<double> _tween = Tween<double>(begin: 1.0, end: 0.95);
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: _animationDuration,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.forward().then((_) {
          _controller.reverse();
        });
        widget.onTap();
      },
      child: ScaleTransition(
        scale: _tween.animate(
          CurvedAnimation(
            parent: _controller,
            curve: Curves.easeOut,
            reverseCurve: Curves.easeIn,
          ),
        ),
        child: Container(
          height: 48,
          width: 72,
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(5),
            shape: BoxShape.circle,
            color: const Color(0xFFF6F6F6),
            image: DecorationImage(image: AssetImage(widget.icon)),
          ),
        ),
      ),
    );
  }
}

class TextWithDivider extends StatelessWidget {
  const TextWithDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: AppColor.greyTextColor,
          ),
        ),
        SizedBox(width: 20),
        Text(
          'Or Sign In with',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColor.blackColortext,
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Divider(
            color: AppColor.greyTextColor,
          ),
        ),
      ],
    );
  }
}

// class PrimaryButton extends StatefulWidget {
//   const PrimaryButton({
//     required this.onTap,
//     required this.text,
//     this.height,
//     this.width,
//     this.borderRadius,
//     this.fontSize,
//     this.color,
//     super.key,
//   });
//   final VoidCallback onTap;
//   final String text;
//   final double? width;
//   final double? height;
//   final double? borderRadius;
//   final double? fontSize;
//   final Color? color;

//   @override
//   State<PrimaryButton> createState() => _PrimaryButtonState();
// }

// class _PrimaryButtonState extends State<PrimaryButton>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   final Duration _animationDuration = const Duration(milliseconds: 300);
//   final Tween<double> _tween = Tween<double>(begin: 1.0, end: 0.95);
//   @override
//   void initState() {
//     _controller = AnimationController(
//       vsync: this,
//       duration: _animationDuration,
//     )..addListener(() {
//         setState(() {});
//       });
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         _controller.forward().then((_) {
//           _controller.reverse();
//         });
//         widget.onTap();
//       },
//       child: ScaleTransition(
//         scale: _tween.animate(
//           CurvedAnimation(
//             parent: _controller,
//             curve: Curves.easeOut,
//             reverseCurve: Curves.easeIn,
//           ),
//         ),
//         child: Card(
//           elevation: 5,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(100),
//           ),
//           child: Container(
//             height: widget.height ?? 50,
//             alignment: Alignment.center,
//             width: widget.width ?? double.maxFinite,
//             decoration: BoxDecoration(
//               color: widget.color ?? const Color(0xFFD1A661),
//               borderRadius: BorderRadius.circular(widget.borderRadius ?? 20),
//             ),
//             child: Text(
//               widget.text,
//               style: TextStyle(
//                   color: widget.color == null
//                       ? AppColor.blackColortext
//                       : Colors.black,
//                   fontSize: widget.fontSize ?? 16,
//                   fontWeight: FontWeight.w600),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.onPressed,
    required this.text,
    this.fontSize,
    this.color,
    super.key,
  });
  final VoidCallback onPressed;
  final String text;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: color ?? Colors.black,
          fontSize: fontSize ?? 14,
        ),
      ),
    );
  }
}

// class RememberMeCard extends StatefulWidget {
//   final Function(bool isChecked) onChanged;
//   const RememberMeCard({required this.onChanged, super.key});

//   @override
//   State<RememberMeCard> createState() => _RememberMeCardState();
// }

// class _RememberMeCardState extends State<RememberMeCard> {
//   bool _isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         GestureDetector(
//           onTap: () {
//             setState(() {
//               _isChecked = !_isChecked;
//             });
//             widget.onChanged(_isChecked);
//           },
//           child: Container(
//             width: 24,
//             height: 24,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               border: Border.all(
//                 color: _isChecked
//                     ? const Color(0xFFD1A661)
//                     : const Color(0xFFE3E9ED),
//                 width: 2,
//               ),
//             ),
//             child: _isChecked
//                 ? const Icon(
//                     Icons.check,
//                     size: 16,
//                     color: Color(0xFFD1A661),
//                   )
//                 : null,
//           ),
//         ),
//         const SizedBox(width: 8),
//         const Text(
//           'Remember me',
//           style: TextStyle(fontSize: 14, color: Color(0xFF78828A)),
//         ),
//       ],
//     );
//   }
// }

class AuthField extends StatefulWidget {
  final String title;
  final String hintText;
  final Color? titleColor;
  final TextEditingController controller;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final bool isPassword;
  final String? Function(String?)? validator;
  final int? maxLines;
  const AuthField({
    required this.title,
    required this.hintText,
    required this.controller,
    this.validator,
    this.titleColor,
    this.maxLines,
    this.textInputAction,
    this.keyboardType,
    this.isPassword = false,
    super.key,
  });

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
              fontSize: 14,
              color: widget.titleColor ?? const Color(0xFF78828A)),
        ),
        const SizedBox(height: 5),
        TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          maxLines: widget.isPassword ? 1 : widget.maxLines,
          // ignore: avoid_bool_literals_in_conditional_expressions
          obscureText: widget.isPassword ? isObscure : false,
          textInputAction: widget.textInputAction,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            fillColor: const Color(0xFFF6F6F6),
            filled: true,
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: AppColor.greyTextColor,
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: Icon(
                        isObscure ? Icons.visibility : Icons.visibility_off,
                        color: const Color(0xFF171725)),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
