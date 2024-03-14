import 'package:ecommerce_advanced/core/common/style/app_images.dart';
import 'package:flutter/material.dart';

class MyAssets extends ThemeExtension<MyAssets> {
  const MyAssets({
    required this.testimage,
  
  });

  final String? testimage;

  @override
  ThemeExtension<MyAssets> copyWith({
    String? bigNavBar,
    String? homeBg,
  }) {
    return MyAssets(
      testimage: testimage,
    
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
      testimage: testimage,
    
    );
  }

  static const MyAssets dark = MyAssets(
    
testimage: Assets.imagesCoreEmptyScreen
  );
  static const MyAssets light = MyAssets(
  testimage: Assets.imagesCoreNoNetwork

  );
}
