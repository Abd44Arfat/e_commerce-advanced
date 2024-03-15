
import 'package:ecommerce_advanced/core/common/animations/animate_do.dart';
import 'package:ecommerce_advanced/core/common/style/fonts/font_weight_helper.dart';
import 'package:ecommerce_advanced/core/common/widgets/custom_linear_button.dart';
import 'package:ecommerce_advanced/core/common/widgets/text_app.dart';
import 'package:ecommerce_advanced/core/extensions/context_extension.dart';
import 'package:ecommerce_advanced/core/language/app_localizations.dart';
import 'package:ecommerce_advanced/core/language/lang_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Dark Mode Button
        
      
      
            CustomFadeInRight(
              duration: 400,
              child: CustomLinearButton(
                onPressed: (){},
                child: Icon(
                
                      
                       //Icons.light_mode_rounded
                    //  :
                       Icons.dark_mode_rounded,
                  color: Colors.white,
                ),
              ),
            ),
      
        //Language Button
        CustomFadeInLeft(
          duration: 400,
          child: CustomLinearButton(
            onPressed: () {
            
              
            },
            height: 44.h,
            width: 100.w,
            child: TextApp(
              text: context.translate(LangKeys.language),
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
       ],
    );
  }
}
