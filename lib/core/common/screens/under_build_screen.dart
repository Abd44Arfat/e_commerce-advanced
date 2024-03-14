import 'package:ecommerce_advanced/core/common/style/app_images.dart';
import 'package:flutter/material.dart';

class PageUnderBuildScreen extends StatelessWidget {
  const PageUnderBuildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesCorePageUnderBuild),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
