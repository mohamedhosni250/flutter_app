import 'package:flutter/material.dart';
import 'package:food_delivery/home/home_body.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/primary_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      PrimaryTexy(text: 'Egypt'),
                      Row(
                        children: [
                          SmallText(
                            text: 'Qena',
                            color: Colors.black54,
                          ),
                          const Icon(Icons.arrow_drop_down_rounded),
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.mainColor),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(child: SingleChildScrollView(child: HomeBody())),
          ],
        ),
      ),
    );
  }
}
