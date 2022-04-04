import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_delivery/utils/dimentios.dart';
import 'package:food_delivery/widgets/app_icon.dart';

import '../../utils/colors.dart';
import '../../widgets/icon_text_widget.dart';
import '../../widgets/primary_text.dart';
import '../../widgets/small_text.dart';

class SingleProductPage extends StatelessWidget {
  const SingleProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.singleProductPageSliderHeight,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/food0.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
              top: 70,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_cart_outlined),
                ],
              )),
          Positioned(
            top: Dimensions.singleProductPageSliderHeight - 20,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrimaryTexy(
                      text: 'Bottler Orange Marinafe',
                      color: Colors.black45,
                      size: 26,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => const Icon(
                                    Icons.star,
                                    color: AppColors.mainColor,
                                  )),
                        ),

                        // ignore: prefer_const_constructors

                        const SizedBox(width: 10.0),
                        SmallText(
                          text: '4.6',
                          color: Colors.black45,
                          size: 14,
                        ),
                        const SizedBox(width: 10.0),
                        SmallText(
                          text: '13565 Comments',
                          color: Colors.black45,
                          size: 14,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        IconTextWidget(
                            icon: Icons.circle_sharp,
                            text: 'Normal',
                            color: AppColors.iconColor1),
                        IconTextWidget(
                            icon: Icons.location_on,
                            text: '1.7 KM',
                            color: AppColors.mainColor),
                        IconTextWidget(
                            icon: Icons.access_time_rounded,
                            text: '30 Min',
                            color: AppColors.iconColor2),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    PrimaryTexy(
                      text: 'Pizza Meal',
                      color: Colors.black54,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColors.buttonBackgroundColor,
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(Icons.add),
                  PrimaryTexy(
                    text: '0',
                    color: Colors.black45,
                  ),
                  Icon(Icons.add),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
