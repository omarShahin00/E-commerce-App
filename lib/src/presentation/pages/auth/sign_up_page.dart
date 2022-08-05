import 'package:bolt_ecommerce/src/core/utils/input_validation_mixin.dart';
import 'package:bolt_ecommerce/src/presentation/sources/colors/color_manager.dart';
import 'package:bolt_ecommerce/src/presentation/sources/routes/routes_manager.dart';
import 'package:bolt_ecommerce/src/presentation/sources/strings/string_manager.dart';
import 'package:bolt_ecommerce/src/presentation/sources/values/value_manager.dart';
import 'package:bolt_ecommerce/src/presentation/widgets/back_icon.dart';
import 'package:bolt_ecommerce/src/presentation/widgets/rounded_button.dart';
import 'package:bolt_ecommerce/src/presentation/widgets/rounded_input_field.dart';
import 'package:bolt_ecommerce/src/presentation/widgets/rounded_password_field.dart';

import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with InputValidationMixin {
  late ThemeData _theme;
  late String _email, _password, _name;
  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: _appBar(context),
      body: _body(),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.white,
      elevation: 0.0,
      leading: const BackIcon(),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: AppSize.s20,
          ),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p14),
            child: Text(
              AppStrings.signUpText,
              style: _theme.textTheme.bodyLarge,
            ),
          ),
          const SizedBox(
            height: AppSize.s30,
          ),
          RoundedInputField(
            onChanged: (value) => _name = value,
            hintText: AppStrings.nameText,
            icon: Icons.person,
            inputType: TextInputType.name,
            validator: (fullName) {
              if (!isEmpty(fullName)) {
                return null;
              } else {
                return AppStrings.requiredText;
              }
            },
          ),
          RoundedInputField(
            onChanged: (value) => _email = value,
            hintText: AppStrings.emailText,
            icon: Icons.email_outlined,
            inputType: TextInputType.emailAddress,
            validator: (email) {
              if (isEmailValid(email)) {
                return null;
              } else if (isEmpty(email)) {
                return AppStrings.requiredText;
              } else if (!isEmailValid(email)) {
                return AppStrings.invalidEmailText;
              }
            },
          ),
          RoundedPasswordField(
            onChanged: (value) => _password = value,
            hintText: AppStrings.passwordText,
            validator: (password) {
              if (!isEmpty(password)) {
                return null;
              } else {
                return AppStrings.requiredText;
              }
            },
          ),
          Center(
            child: RoundedButton(
              text: AppStrings.loginText,
              press: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  Routes.homePage,
                  (route) => false,
                );
              },
              color: ColorManager.white,
              backgroundColor: ColorManager.buttonColor,
              isLoading: false,
            ),
          ),
          const SizedBox(
            height: AppSize.s10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.alreadyHaveAnAcc,
                style: _theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                width: AppSize.s4,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.loginPage);
                },
                child: Text(
                  AppStrings.loginText,
                  style: _theme.textTheme.displaySmall,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
