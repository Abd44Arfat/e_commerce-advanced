import 'package:ecommerce_advanced/core/common/style/app_images.dart';
import 'package:flutter/material.dart';

class MyAssets extends ThemeExtension<MyAssets> {
  const MyAssets({
    required this.bigNavBar,
    required this.homeBg,
  });

  final String? bigNavBar;
  final String? homeBg;

  @override
  ThemeExtension<MyAssets> copyWith({
    String? bigNavBar,
    String? homeBg,
  }) {
    return MyAssets(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  @override
  ThemeExtension<MyAssets> lerp(
    covariant ThemeExtension<MyAssets>? other,
    double t,
  ) {
    if (other is! MyAssets) {
      return this;
    }
    return MyAssets(
      bigNavBar: bigNavBar,
      homeBg: homeBg,
    );
  }

  static const MyAssets dark = MyAssets(
    bigNavBar: Assets.imagesCustomerBigNavBarDark,
    homeBg:  Assets.imagesCustomerHomeBgDark,
  );
  static const MyAssets light = MyAssets(
    bigNavBar:  Assets.imagesCustomerHomeBgLight,
    homeBg:  Assets.imagesCustomerHomeBgLight,
  );
}
