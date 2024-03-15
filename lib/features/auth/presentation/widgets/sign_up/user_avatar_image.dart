import 'package:ecommerce_advanced/core/common/style/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserAvararImage extends StatelessWidget {
  const UserAvararImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 38,
      backgroundImage: const AssetImage(Assets.imagesCustomerUser),
      backgroundColor: Colors.grey.withOpacity(.1),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          // remove image

          Positioned(
            top: -15,
            right: -15,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ),

          const SizedBox.shrink(),
          Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.transparent),
          ),

          //take image

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_a_photo,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
