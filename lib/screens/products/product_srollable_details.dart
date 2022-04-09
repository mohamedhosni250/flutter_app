import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/primary_text.dart';

import '../../widgets/app_icon.dart';
import '../../widgets/icon_text_widget.dart';

class ScrollableProductHeader extends StatelessWidget {
  const ScrollableProductHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          toolbarHeight: 100,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AppIcon(icon: Icons.arrow_back_ios),
              AppIcon(icon: Icons.shopping_cart_outlined),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20))),
                padding: const EdgeInsets.all(10),
                width: double.maxFinite,
                child: Center(
                  child: PrimaryTexy(
                    text: 'Bottler Orange Marinafe',
                    color: Colors.black45,
                    size: 26,
                  ),
                )),
          ),
          backgroundColor: AppColors.yellowColor,
          expandedHeight: 300,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'assets/image/food0.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
              child: Row(
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
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: const ExpandableText(
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolo consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolo consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolo consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolo consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolo consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolo consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolo consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidu consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolo consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolo consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolont ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.',
                expandText: 'show more',
                collapseText: 'show less',
                maxLines: 7,
                style: TextStyle(height: 1.8),
                linkColor: AppColors.mainColor,
              ),
            )
          ],
        ))
      ]),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(left: 50, right: 50, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const AppIcon(
                    backgroundColor: AppColors.mainColor,
                    iconColor: Colors.white,
                    icon: Icons.remove),
                PrimaryTexy(
                  text: '20.88 LE * 0 ',
                  color: Colors.black45,
                  size: 25,
                ),
                const AppIcon(
                    backgroundColor: AppColors.mainColor,
                    iconColor: Colors.white,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: 100,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              color: AppColors.buttonBackgroundColor,
            ),
            child: Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              margin: EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const AppIcon(
                      backgroundColor: Colors.white,
                      icon: Icons.favorite,
                      iconColor: AppColors.mainColor,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.mainColor,
                    ),
                    padding: const EdgeInsets.all(20),
                    child: PrimaryTexy(
                      text: '28 LE | Add To Cart',
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
