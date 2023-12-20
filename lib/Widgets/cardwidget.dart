import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:provider/provider.dart';
//import 'package:sir_jitendra_project/Widgets/primary_icons.dart';
import 'package:sir_jitendra_project/providers/card_provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Utils/colors.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidget();
}

class _CardWidget extends State<CardWidget> {
  // Color mainColor = const Color(0xFF2631C1);
  final PageController _pageController =
      PageController(viewportFraction: 0.8, keepPage: true);
  final CardSwiperController controller = CardSwiperController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // List<String> imagesUrl = [
  //   "https://wisato.id/wp-content/uploads/2019/02/Pianemo-Instagram@elisabeth.mita_.jpg",
  //   "https://cdn0-production-images-kly.akamaized.net/2Zm1l5NnGy_1TTg375C8mZAjHlY=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3381232/original/093731900_1613710632-Most-Colorful-Natural-Wonders-011.jpg",
  //   "https://cdn0-production-images-kly.akamaized.net/MuG0kevh0anpYLDIAizLK-bRv-Y=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/915283/original/050372600_1435732614-Hitsujiyama_park__Jepang.png",
  //   "https://divedigital.id/wp-content/uploads/2020/06/polynesia-3021072_1280.jpg",
  //   "https://image.freepik.com/free-photo/asian-woman-wearing-thai-culture-traditional-rice-terrace-ban-pa-bong-piang-chiang-mai-thailand_335224-1060.jpg",
  // ];

  @override
  Widget build(BuildContext context) {
    CardProvider appProvider = Provider.of<CardProvider>(
      context,
    );
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // SizedBox(
        //   width: size.width * 0.003,
        // ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10),
          child: Container(
            width: size.width * 0.94,
            height: size.height * 1.2,
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
            ),
            child: CardSwiper(
              allowedSwipeDirection: AllowedSwipeDirection.only(down: true),
              isLoop: false,
              backCardOffset: const Offset(0, 40),
              numberOfCardsDisplayed: 1,
              controller: controller,
              direction: CardSwiperDirection.bottom,
              cardsCount: appProvider.cards.length,
              cardBuilder:
                  (context, index, percentThresholdX, percentThresholdY) =>
                      appProvider.cards[index],
            ),
          ),
        ),
        // SizedBox(
        //   width: size.width * 0.01,
        // ),
        Padding(
          padding: const EdgeInsets.only(
            right: 0.011,
          ),
          child: Center(
            child: SmoothPageIndicator(
              axisDirection: Axis.vertical,
              controller: _pageController, // PageController
              count: appProvider.cards.length,
              effect: ExpandingDotsEffect(
                dotWidth: size.width * 0.012,
                dotHeight: size.height * 0.011,
                activeDotColor: smoothColor,
                dotColor: Colors.grey,
              ),
              onDotClicked: (index) {},
            ),
          ),
        ),
      ],
    );
  }
}
