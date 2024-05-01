import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:space_app/features/rockets/data/rocket_data.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key, required this.screenHeight});
  final double screenHeight;

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: rocketList[0]
              .flickrImages!
              .map(
                (e) => Container(
                  height: widget.screenHeight / 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        e,
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            height: widget.screenHeight / 4,
            initialPage: 0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            onPageChanged: (index, _) {
              setState(() {
                _currentPage = index;
              });
            },
          ),
        ),
        buildeCarouselIndicator(currentPage: _currentPage)
      ],
    );
  }

}

  buildeCarouselIndicator({required int currentPage}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < rocketList[0].flickrImages!.length; i++)
          Container(
            height: i == currentPage ? 7 : 5,
            width: i == currentPage ? 7 : 5,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: i == currentPage ? Colors.white : Colors.grey,
              shape: BoxShape.circle,
            ),
          )
      ],
    );
  }