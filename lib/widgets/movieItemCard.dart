import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.topBgColors,
    required this.topTitles,
    required this.topSubTitles,
    required this.topImages,
    this.index,
    this.constraints,
  }) : super(key: key);

  final List<Color> topBgColors;
  final List<String> topTitles;
  final List<String> topSubTitles;
  final List<String> topImages;
  final int? index;
  final BoxConstraints? constraints;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: constraints!.maxHeight * 0.02),
      child: Container(
        color: Colors.transparent,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: constraints!.maxHeight * 0.055,
                  ),
                  Container(
                    height: constraints!.maxHeight * 0.16,
                    decoration: BoxDecoration(
                      color: topBgColors[index!],
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   height: constraints!.maxHeight * 0.02,
                  // ),
                  Container(
                    height: constraints!.maxHeight * 0.09,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: constraints!.maxHeight * 0.01,
                        ),
                        Text(
                          topTitles[index!],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          topSubTitles[index!],
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black38,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Card(
                elevation: 18,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: Image.asset(
                    topImages[index!],
                    height: constraints!.maxHeight * 0.18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
