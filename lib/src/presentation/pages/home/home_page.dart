import 'package:bolt_ecommerce/src/presentation/sources/colors/color_manager.dart';
import 'package:bolt_ecommerce/src/presentation/sources/image/assets_manager.dart';
import 'package:bolt_ecommerce/src/presentation/sources/values/value_manager.dart';

import 'package:flutter/material.dart';

import '../../sources/strings/string_manager.dart';
import '../../widgets/rounded_input_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        leading: Image.asset(
          ImageAssetsManager.menueBar,
        ), // todo: must open like a menu (drawer)
        actions: [
          Image.asset(
            ImageAssetsManager.notofication,
          ), // todo: must be clickable
          Image.asset(
            ImageAssetsManager.filter,
          ), // todo: must be clickable
        ],
        elevation: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: AppSize.s20,
          ),
          const RoundedInputField(
            //controller: _emailController,
            //onChanged: (value) => email = value,
            hintText: AppStrings.search,
            icon: Icons.search,
            inputType: TextInputType.text,
            // validator: (email) {
            //   if (isEmailValid(email)) {
            //     return null;
            //   } else if (isEmpty(email)) {
            //     return AppStrings.requiredText;
            //   } else if (!isEmailValid(email)) {
            //     return AppStrings.invalidEmailText;
            //   }
            // },
          ),
          const SizedBox(
            height: AppSize.s10,
          ),
          Padding(
            padding: const EdgeInsets.all(AppPadding.p18),
            child: Text(
              AppStrings.categories,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
