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

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with InputValidationMixin {
  late ThemeData _theme;
  late String _email, _password;
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

  Column _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: AppSize.s20,
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p14),
          child: Text(
            AppStrings.loginText,
            style: _theme.textTheme.bodyLarge,
          ),
        ),
        const SizedBox(
          height: AppSize.s50,
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
              AppStrings.dontHaveAnAcc,
              style: _theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              width: AppSize.s4,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.signUpPage);
              },
              child: Text(
                AppStrings.signUpText,
                style: _theme.textTheme.displaySmall,
              ),
            ),
          ],
        )
      ],
    );
  }
}
