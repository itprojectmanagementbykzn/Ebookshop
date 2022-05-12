import 'package:flutter/material.dart';
import 'package:zar_ni_bwar_ui/widgets/movieItemCard.dart';

class PageItem extends StatefulWidget {
  final int index;
  PageItem(this.index, {Key? key}) : super(key: key);

  @override
  _PageItemState createState() => _PageItemState();
}

class _PageItemState extends State<PageItem>
    with AutomaticKeepAliveClientMixin {
  List<String> topImages = [
    'assets/3.jpg',
    'assets/4.jpg',
    'assets/5.jpg',
    'assets/6.jpg',
    'assets/3.jpg',
    'assets/4.jpg',
    'assets/5.jpg',
    'assets/6.jpg',
  ];
  List<Color> topBgColors = [
    Colors.cyan.withOpacity(0.5),
    Colors.pinkAccent.withOpacity(0.5),
    Colors.purpleAccent.withOpacity(0.5),
    Colors.yellowAccent.withOpacity(0.5),
    Colors.cyan.withOpacity(0.5),
    Colors.pinkAccent.withOpacity(0.5),
    Colors.purpleAccent.withOpacity(0.5),
    Colors.yellowAccent.withOpacity(0.5),
  ];
  List<String> topTitles = [
    'Attack',
    'Avengers',
    'Black panther',
    'Moonlight',
    'Attack',
    'Avengers',
    'Black panther',
    'Moonlight',
  ];
  List<String> topSubTitles = [
    '3500 ကျပ်',
    '4200 ကျပ်',
    '4600 ကျပ်',
    '2500 ကျပ်',
    '4500 ကျပ်',
    '1800 ကျပ်',
    '1900 ကျပ်',
    '3600 ကျပ်',
  ];
  @override
  Widget build(BuildContext context) {
    super.build(context);
    print('build index:${widget.index} page');
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: GridView.builder(
        itemCount: topImages.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 0.0,
            // childAspectRatio: 10 / 30,
            childAspectRatio: 0.73),
        itemBuilder: (BuildContext context, int index) {
          return ItemCard(
            topBgColors: topBgColors,
            topTitles: topTitles,
            topSubTitles: topSubTitles,
            topImages: topImages,
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            index: index,
          );
        },
      ),
    );
    //  Container(
    //   // color: Colors.pink,
    //   child: Text('index:${widget.index}'),
    //   alignment: Alignment.center,
    // );
  }

  @override
  // bool get wantKeepAlive => false;
  bool get wantKeepAlive => true;
}
