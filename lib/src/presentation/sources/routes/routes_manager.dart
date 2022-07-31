import 'package:bolt_ecommerce/src/presentation/pages/addressPages/address_page.dart';
import 'package:bolt_ecommerce/src/presentation/pages/addressPages/create_address_page.dart';
import 'package:bolt_ecommerce/src/presentation/pages/auth/login_page.dart';
import 'package:bolt_ecommerce/src/presentation/pages/auth/sign_up_page.dart';
import 'package:bolt_ecommerce/src/presentation/pages/cart/cart_page.dart';
import 'package:bolt_ecommerce/src/presentation/pages/checkout/checkout_page.dart';
import 'package:bolt_ecommerce/src/presentation/pages/confirmation/confirmation_page.dart';
import 'package:bolt_ecommerce/src/presentation/pages/favorite/favorite_page.dart';
import 'package:bolt_ecommerce/src/presentation/pages/featured/featured_page.dart';
import 'package:bolt_ecommerce/src/presentation/pages/home/home_page.dart';
import 'package:bolt_ecommerce/src/presentation/pages/onBoarding/on_boarding_page.dart';
import 'package:bolt_ecommerce/src/presentation/pages/orders/my_orders_page.dart';
import 'package:bolt_ecommerce/src/presentation/pages/payment/payment_page.dart';
import 'package:bolt_ecommerce/src/presentation/pages/settings/settings_page.dart';
import 'package:bolt_ecommerce/src/presentation/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

import '../../pages/featured/item_details_page.dart';
import '../../pages/profile/profile_page.dart';
import '../strings/string_manager.dart';

class Routes {
  static const String splashPage = "/";

  static const String onBoardingPage = "/onBoardingPage";

  static const String loginPage = "/loginPage";

  static const String signUpPage = "/signUpPage";

  static const String homePage = "/homePage ";

  static const String featuredPage = "/featuredPage";

  static const String itemDetailsPage = "/itemDetailsPage";

  static const String cartPage = "/cartPage ";

  static const String addressPage = "/addressPage";

  static const String createAddressPage = "/createAddressPage";

  static const String paymentPage = "/paymentPage";

  static const String checkoutPage = "/checkoutPage";

  static const String confirmationPage = "/confirmation Page";

  static const String profilePage = "/profilePage";

  static const String favoritePage = "/favoritePage";

  static const String myOrdersPage = "/myOrdersPage";

  static const String settingsPage = "/settingsPage";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
        );

      case Routes.onBoardingPage:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingPage(),
        );

      case Routes.loginPage:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );

      case Routes.signUpPage:
        return MaterialPageRoute(
          builder: (_) => const SignUpPage(),
        );

      case Routes.homePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      case Routes.featuredPage:
        return MaterialPageRoute(
          builder: (_) => const FeaturedPage(),
        );

      case Routes.itemDetailsPage:
        return MaterialPageRoute(
          builder: (_) => const ItemDetailsPage(),
        );

      case Routes.cartPage:
        return MaterialPageRoute(
          builder: (_) => const CartPage(),
        );

      case Routes.addressPage:
        return MaterialPageRoute(
          builder: (_) => const AddressPage(),
        );

      case Routes.createAddressPage:
        return MaterialPageRoute(
          builder: (_) => const CreateAddressPage(),
        );

      case Routes.paymentPage:
        return MaterialPageRoute(
          builder: (_) => const PaymentPage(),
        );

      case Routes.checkoutPage:
        return MaterialPageRoute(
          builder: (_) => const CheckoutPage(),
        );

      case Routes.confirmationPage:
        return MaterialPageRoute(
          builder: (_) => const ConfirmationPage(),
        );

      case Routes.profilePage:
        return MaterialPageRoute(
          builder: (_) => const ProfilePage(),
        );

      case Routes.favoritePage:
        return MaterialPageRoute(
          builder: (_) => const FavoritePage(),
        );

      case Routes.myOrdersPage:
        return MaterialPageRoute(
          builder: (_) => const MyOrdersPage(),
        );

      case Routes.settingsPage:
        return MaterialPageRoute(
          builder: (_) => const SettingsPage(),
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(
            AppStrings.noRouteFound,
          ),
        ),
        body: const Center(
          child: Text(
            AppStrings.noRouteFound,
          ),
        ),
      ),
    );
  }
}
