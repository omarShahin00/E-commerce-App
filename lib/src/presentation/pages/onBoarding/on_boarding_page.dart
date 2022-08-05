import 'package:bolt_ecommerce/src/presentation/sources/colors/color_manager.dart';
import 'package:bolt_ecommerce/src/presentation/sources/image/assets_manager.dart';
import 'package:bolt_ecommerce/src/presentation/sources/routes/routes_manager.dart';
import 'package:bolt_ecommerce/src/presentation/sources/strings/string_manager.dart';
import 'package:bolt_ecommerce/src/presentation/sources/values/value_manager.dart';
import 'package:bolt_ecommerce/src/presentation/widgets/rounded_button.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late ThemeData _theme;
  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: AppSize.s40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.onBoardingText1,
                  style: _theme.textTheme.titleSmall,
                ),
                const SizedBox(
                  width: AppSize.s4,
                ),
                Text(
                  AppStrings.onBoardingText2,
                  style: _theme.textTheme.labelLarge,
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.s4,
            ),
            Text(
              AppStrings.onBoardingText3,
              style: _theme.textTheme.labelMedium,
            ),
            const SizedBox(
              height: AppSize.s90,
            ),
            SvgPicture.asset(ImageAssetsManager.onBoardingImage),
            const SizedBox(
              height: AppSize.s40,
            ),
            RoundedButton(
              text: AppStrings.loginText,
              press: () {
                Navigator.pushNamed(context, Routes.loginPage);
              },
              color: ColorManager.white,
              backgroundColor: ColorManager.buttonColor,
              isLoading: false,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.signUpPage);
              },
              child: Text(
                AppStrings.signUpText,
                style: _theme.textTheme.labelSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
