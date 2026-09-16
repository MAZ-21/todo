import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:todo/core/asset/app_icons.dart';
import 'package:todo/core/shared/custom_elevated_button.dart';
import 'package:todo/core/shared/custom_text_editing_controller.dart';
import 'package:todo/core/styles/styles.dart';
import 'package:todo/core/utils/size_config.dart';
import 'package:todo/feature/signup/data/repo/sign_up_repo.dart';
import 'package:todo/feature/signup/presentation/view/widget/sign_up_text_guid.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key, required this.signUpRepo});
  final SignUpRepo signUpRepo;

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool isHidden = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SignUpTextGuid(),
                  SizedBox(height: 48),
                  Text('Email Address', style: Styles.medium18(context)),
                  SizedBox(height: 12),
                  CustomTextField(
                    hintText: 'name@example.com',
                    inputType: TextInputType.emailAddress,
                    controller: emailController,
                    isObsecure: false,
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'enter an email';
                      }
                      if (!RegExp(
                            r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                          ).hasMatch(value) ||
                          !value.contains('@')) {
                        return 'invalid email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 24),
                  Text('Password', style: Styles.medium18(context)),
                  SizedBox(height: 12),
                  CustomTextField(
                    key: const ValueKey('password'),
                    hintText: 'Enter your password',
                    inputType: TextInputType.text,
                    isObsecure: isHidden,
                    controller: passwordController,
                    onObsecurePressed: () {
                      isHidden = !isHidden;
                      setState((){});
                    },
                    icon: isHidden
                        ? SvgPicture.asset(AppIcons.eyeSlash)
                        : SvgPicture.asset(AppIcons.eye),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'enter a password';
                      }
                      if (RegExp(
                            r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                          ).hasMatch(value) ||
                          value.length <= 8) {
                        return 'enter a strong passwrod';
                      }
                      return null;
                    },
                  ),
                  Spacer(),
                  SizedBox(
                    height: SizeConfig.responsiveHeight(context, 56),
                    width: double.infinity,
                    child: CustomElevatedButton(
                      onpress: () async {
                        if (_formKey.currentState!.validate()) {
                          await widget.signUpRepo.signUpWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text,
                          );
                          context.go('home-page');
                          log(emailController.text);
                          log(passwordController.text);
                        }
                      },
                      title: 'Sign Up',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
