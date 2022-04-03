// ignore_for_file: prefer_const_constructors

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/icon_text_widget.dart';
import 'package:food_delivery/widgets/primary_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  PageController pageController = PageController(viewportFraction: 0.9);
  var _currentPageValue = 0.0;
  var _scaleFactor = 0.8;

  double _height = 220;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10),
          height: 320,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Row(children: [
            PrimaryTexy(
              text: 'Popular .',
              color: Colors.black54,
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 5),
              child: SmallText(
                text: 'Food Ordring',
                color: Colors.black26,
              ),
            ),
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 900,
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Row(children: [
                    //image container
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/image/food0.png"))),
                    ),
                    //text container
                    Expanded(
                      child: Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                        child: Column(children: [
                          PrimaryTexy(
                            text: 'The Main Meal Of Our REsturent',
                          )
                        ]),
                      ),
                    )
                  ]),
                );
              }),
        )
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);

      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: _height,
            margin: const EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/image/food0.png'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(30),
                color: index.isEven
                    ? const Color(0xFF89dad0)
                    : const Color(0xFFfa7552)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 140,
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
              ),
              child: Container(
                width: 300,
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrimaryTexy(
                      text: 'Bottler Orange Marinafe',
                      color: Colors.black45,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: AppColors.mainColor,
                                  )),
                        ),

                        // ignore: prefer_const_constructors

                        SizedBox(width: 10.0),
                        SmallText(
                          text: '4.6',
                          color: Colors.black45,
                          size: 14,
                        ),
                        SizedBox(width: 10.0),
                        SmallText(
                          text: '13565 Comments',
                          color: Colors.black45,
                          size: 14,
                        ),
                      ],
                    ),
                    SizedBox(
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
