// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:zar_ni_bwar_ui/ui/tabBars.dart';
import 'package:zar_ni_bwar_ui/widgets/movieItemCard.dart';

class SingleUIScreen extends StatefulWidget {
  const SingleUIScreen({Key? key}) : super(key: key);

  @override
  State<SingleUIScreen> createState() => _SingleUIScreenState();
}

class _SingleUIScreenState extends State<SingleUIScreen> {
  List<String> topImages = [
    'assets/1.jpg',
    'assets/2.jpg',
  ];
  List<Color> topBgColors = [
    Colors.pink.withOpacity(0.5),
    Colors.blueAccent.withOpacity(0.5),
  ];
  List<String> topTitles = [
    'Thor',
    'Joker',
  ];
  List<String> topSubTitles = [
    'Margaret Atwood',
    'Tylor Jenkins',
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'CROWN Online BookStore',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.sort,
                color: Colors.blue,
              ),
            ],
          ),
          actions: [
            Row(
              children: [
                Icon(
                  Icons.more_vert,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: constraints.maxWidth * 0.025,
                ),
              ],
            )
          ],
        ),
        body: Container(
          constraints: constraints,
          child: Column(
            children: [
              Container(
                color: Colors.transparent,
                height: constraints.maxHeight * 0.35,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: constraints.maxWidth * 0.05,
                      vertical: constraints.maxHeight * 0.015),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hot Sales',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Show All',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: GridView.builder(
                          itemCount: topImages.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 20.0,
                                  mainAxisSpacing: 10.0,
                                  // childAspectRatio: 10 / 30,
                                  childAspectRatio: 0.64),
                          itemBuilder: (BuildContext context, int index) {
                            return ItemCard(
                              topBgColors: topBgColors,
                              topTitles: topTitles,
                              topSubTitles: topSubTitles,
                              topImages: topImages,
                              constraints: constraints,
                              index: index,
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBars(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
