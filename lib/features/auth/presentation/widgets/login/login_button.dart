import 'package:ecommerce_advanced/core/common/animations/animate_do.dart';
import 'package:ecommerce_advanced/core/common/style/fonts/font_weight_helper.dart';
import 'package:ecommerce_advanced/core/common/widgets/custom_linear_button.dart';
import 'package:ecommerce_advanced/core/common/widgets/text_app.dart';
import 'package:ecommerce_advanced/core/extensions/context_extension.dart';
import 'package:ecommerce_advanced/core/language/lang_keys.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
        duration: 600,
        child: CustomLinearButton(
          onPressed: () {
          },
          height: 50.h,
          width: MediaQuery.of(context).size.width,
          child:TextApp(text: context.translate(LangKeys.loginbutton),
          
           theme: context.textStyle.copyWith(

fontSize: 18.sp,
fontWeight: FontWeightHelper.bold
           ))
        ));
  }
}
