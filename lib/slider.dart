import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:multikart/size_config.dart';


class SliderBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: SizeConfig.safeBlockVertical * 1.0,
            horizontal: SizeConfig.safeBlockHorizontal * 4.0,
          ),
          child: CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              autoPlay: true,

              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastLinearToSlowEaseIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.89,
            ),
            items: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 4),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("assets/discount3.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12,
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage("assets/discount1.jpg"),
                      fit: BoxFit.cover),
                ),
              ),

            ],
          ),
        )
      ],
    );
  }
}
