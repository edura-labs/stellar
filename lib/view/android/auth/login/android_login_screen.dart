import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stellar/constants/assets.dart';
import 'package:stellar/controllers/auth/login_controller.dart';
import 'package:stellar/theme/colors.dart';
import 'package:stellar/view/android/auth/login/modules/form_section.dart';
import 'package:stellar/view/android/auth/login/modules/top_section.dart';

class AndroidLoginScreen extends GetView<LoginController> {
  const AndroidLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: (() => FocusManager.instance.primaryFocus?.unfocus()),
      child: Scaffold(
        backgroundColor: colorScheme.primary,
        body: Stack(
          children: [
            backgroundImage(size),
            SafeArea(
              child: Column(
                children: [
                  topSection(size, colorScheme),
                  formSection(colorScheme, controller),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  backgroundImage(Size size) {
    return Image.asset(
      Assets.atomIconPng,
      color: kLightGreyColor.withOpacity(.06),
      height: size.height / 1.2,
      width: size.width,
      fit: BoxFit.cover,
    );
  }
}
