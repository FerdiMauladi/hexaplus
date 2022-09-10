import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../model/home_carousel_model.dart';
import 'carousel_list_view.dart';

class CarouselView extends StatefulWidget {
  const CarouselView({
    Key? key,
  }) : super(key: key);

  @override
  State<CarouselView> createState() => _CarouselViewState();
}

class _CarouselViewState extends State<CarouselView> {
  CarouselController carouselController = CarouselController();

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.815,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.815,
            child: CarouselSlider.builder(
              itemCount: dataView.length,
              itemBuilder: (context, index, realIndex) {
                return CarouselListView(
                  image: dataView[index].image!,
                  title: dataView[index].title!,
                  subtitle1: dataView[index].subtitle1!,
                  subtitle2: dataView[index].subtitle2!,
                );
              },
              options: CarouselOptions(
                viewportFraction: 1,
                height: double.infinity,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
                autoPlay: true,
                autoPlayInterval: const Duration(
                  seconds: 6,
                ),
                autoPlayAnimationDuration: const Duration(
                  seconds: 2,
                ),
                enableInfiniteScroll: false,
                initialPage: _current,
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(
              bottom: 25,
            ),
            child: AnimatedSmoothIndicator(
              activeIndex: _current,
              count: dataView.length,
              onDotClicked: (index) => carouselController.animateToPage(
                index,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeIn,
              ),
              effect: const SwapEffect(
                paintStyle: PaintingStyle.stroke,
                strokeWidth: 2,
                activeDotColor: Colors.grey,
                dotColor: Colors.grey,
                dotHeight: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
