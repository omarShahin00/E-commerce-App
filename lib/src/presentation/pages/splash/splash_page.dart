import 'dart:async';

import 'package:bolt_ecommerce/src/presentation/sources/colors/color_manager.dart';
import 'package:bolt_ecommerce/src/presentation/sources/constants/constant_manager.dart';
import 'package:bolt_ecommerce/src/presentation/sources/image/assets_manager.dart';
import 'package:bolt_ecommerce/src/presentation/sources/routes/routes_manager.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(
      Duration(seconds: AppConstant.splashDelay),
      _goNext,
    );
  }

  _goNext() {
    Navigator.pushReplacementNamed(
      context,
      Routes.onBoardingPage,
    );
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ColorManager.primary,
              ColorManager.blue,
            ],
          ),
        ),
        child: Center(
          child: Lottie.asset(
            ImageAssetsManager.splashLogo,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
