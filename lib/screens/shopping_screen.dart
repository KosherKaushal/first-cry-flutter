import 'package:carousel_slider/carousel_slider.dart';
import 'package:first_cry_flutter/common/ui_assistance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../common/constants.dart';
import '../widgets/category_grid.dart';
import '../widgets/stores_list.dart';
import '../widgets/trending_divider.dart';

class ShoppingScreen extends StatefulWidget {
  static const String id = "ShoppingScreen";
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: Row(
          children: [
            const CircleAvatar(
              radius: 12.0,
            ),
            UIAssistance.horizontalSpaceExtraSmall(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Shop for',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    UIAssistance.horizontalSpaceExtraSmall(),
                    const Icon(CupertinoIcons.chevron_down, size: 14.0),
                  ],
                ),
                Text(
                  'All',
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ],
        ),
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Icon(CupertinoIcons.search, size: 19.0),
            UIAssistance.horizontalSpace(10.0),
            const Icon(CupertinoIcons.heart, size: 19.0),
            UIAssistance.horizontalSpace(10.0),
            const Icon(CupertinoIcons.cart_badge_minus, size: 19.0),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///Location bar
            Container(
              color: Colors.black12,
              height: 25.0,
              child: Row(
                children: [
                  UIAssistance.horizontalSpaceMedium(),
                  const Icon(CupertinoIcons.location_solid, size: 16.0),
                  UIAssistance.horizontalSpaceExtraSmall(),
                  Text(
                    'Delivery to - 411043',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Spacer(),
                  const Icon(CupertinoIcons.chevron_down, size: 16.0),
                  UIAssistance.horizontalSpaceMedium(),
                ],
              ),
            ),

            ///Join firstCry Club
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Container(
                height: 70.0,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('images/join_club.jpg'),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),

            ///Slider
            Stack(
              children: [
                CarouselSlider.builder(
                  itemCount: kMainSliderImages.length,
                  itemBuilder: (context, index, realIndex) {
                    return buildImage(
                      kMainSliderImages[index],
                      index,
                      MediaQuery.of(context).size.width,
                    );
                  },
                  options: CarouselOptions(
                    viewportFraction: 1,
                    height: 300.0,
                    autoPlay: true,
                    reverse: true,
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index),
                  ),
                ),
                Positioned(
                  left: 150.0,
                  top: 275.0,
                  child: buildIndicator(),
                ),
              ],
            ),
            UIAssistance.verticalSpaceSmall(),
            CarouselSlider.builder(
              itemCount: kSliderImages.length,
              itemBuilder: (context, index, realIndex) {
                return buildImage(
                  kSliderImages[index],
                  index,
                  MediaQuery.of(context).size.width / 1.09,
                );
              },
              options: CarouselOptions(
                viewportFraction: 1,
                height: 60.0,
                autoPlay: true,
              ),
            ),

            UIAssistance.verticalSpaceSmall(),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Shop By Category',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.start,
              ),
            ),
            UIAssistance.verticalSpaceSmall(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: CategoryGrid(),
            ),
            UIAssistance.verticalSpaceSmall(),
            Center(
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('See all Categories'),
              ),
            ),
            UIAssistance.verticalSpaceSmall(),
            const TrendingDivider(),
            UIAssistance.verticalSpaceSmall(),
            Center(
              child: Text(
                'TRENDING STORES',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.black87),
              ),
            ),
            UIAssistance.verticalSpaceSmall(),
            const TrendingDivider(),
            UIAssistance.verticalSpaceSmall(),
            const SizedBox(
              height: 410.0,
              child: StoresList(),
            ),
            UIAssistance.verticalSpaceSmall(),
            Container(
              color: Colors.grey.withOpacity(0.5),
              height: 80.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String img, int index, double? width) => Container(
        width: width,
        color: Colors.grey,
        child: Image.asset(
          img,
          fit: BoxFit.cover,
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: kMainSliderImages.length,
        effect: const JumpingDotEffect(
          activeDotColor: Colors.blueGrey,
          paintStyle: PaintingStyle.stroke,
          dotHeight: 8.0,
          dotWidth: 8.0,
          jumpScale: 2.4,
        ),
      );
}
