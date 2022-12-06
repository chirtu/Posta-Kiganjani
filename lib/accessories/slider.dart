import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselWithDotsPage extends StatefulWidget {
  List<String> imgList;

  CarouselWithDotsPage({required this.imgList});

  @override
  _CarouselWithDotsPageState createState() => _CarouselWithDotsPageState();
}

class _CarouselWithDotsPageState extends State<CarouselWithDotsPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList
        .map((item) => Container(
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
        child: Stack(
          children: [
            Image.asset(
              item,
              fit: BoxFit.cover,
              width: 600,
            ),
            // Positioned(
            //   bottom: 0.0,
            //   left: 0.0,
            //   right: 0.0,
            //   child: Container(
            //     height: 120,
            //     decoration: const BoxDecoration(
            //       gradient: LinearGradient(
            //         colors: [
            //           Color.fromARGB(200, 255, 69, 69),
            //           Color.fromARGB(0, 0, 0, 0),
            //         ],
            //         begin: Alignment.bottomCenter,
            //         end: Alignment.topCenter,
            //       ),
            //     ),
            //     padding: const EdgeInsets.symmetric(
            //       horizontal: 20,
            //       vertical: 10,
            //     ),
            //     child: const Text(
            //       'KAMA UNA TATIZO LOLOTE KWENYE UPIMAJI WA SAMPULI ZA HIV EQA AU KUTUMA MAJIBU YA HIV EQA PIGA SIMU ZIFUATAZO; '
            //           '\n 0710xxxxxx au 0711xxxxxx',
            //       style: TextStyle(
            //         color: Colors.black,
            //         fontSize: 12.0,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    ))
        .toList();

    return Column(
      children: [
        // Padding(
        //   padding: EdgeInsets.only(top: 1, left: 20, right: 20,),
        //   child: Text(
        //     "Our Services",
        //     style: TextStyle(
        //       color: Colors.green[700],
        //       fontWeight: FontWeight.bold,
        //       fontSize: 18,
        //     ),
        //   ),
        // ),
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imgList.map((url) {
            int index = widget.imgList.indexOf(url);
            return Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 3,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}