import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SlideRooms extends StatefulWidget {
  SlideRooms() : super();
  final String title = "hi";

  @override
  _SlideRoomsState createState() => _SlideRoomsState();
}

class _SlideRoomsState extends State<SlideRooms> {
  int _current = 0;
  List roomss = [
    'room/room1.jpg',
    'room/room2.jpg',
    'room/room3.jpg',
    'room/room4.jpg',
    'room/room5.jpg',
    'room/room6.jpg',
    'room/room7.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
              height: 200.0,
              initialPage: 0,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: roomss.map((imgAsset) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      // decoration: BoxDecoration(

                      // ),
                      child: Container(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imgAsset,
                              fit: BoxFit.cover,
                            )),
                      ),
                    );
                  },
                );
              }).toList(),
            )
          ],
    );
  }
}
