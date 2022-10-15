import 'package:flutter/material.dart';
import 'package:my_groceries_application/services/utils.dart';
import 'package:my_groceries_application/widgets/categories_widget.dart';
import 'package:my_groceries_application/widgets/text_widget.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({Key? key}) : super(key: key);
  //list of colors
  List<Color> gridColors = [
    const Color.fromARGB(255, 212, 88, 51),
    const Color(0xffF8A44C),
    const Color.fromARGB(255, 150, 92, 79),
    const Color.fromARGB(255, 199, 23, 53),
    const Color(0xffFDE598),
    const Color(0xffB7DFF5),
  ];
  //the map is created below
  List<Map<String, dynamic>> catInfo = [
    {
      'imgPath': 'assets/images/cat/fruitsOne.png',
      'catText': 'Fruits',
    },
    {
      'imgPath': 'assets/images/cat/grainsOne.png',
      'catText': 'Grains',
    },
    {
      'imgPath': 'assets/images/cat/legumesOne.png',
      'catText': 'Legumes',
    },
    {
      'imgPath': 'assets/images/cat/meatOne.png',
      'catText': 'Meat',
    },
    {
      'imgPath': 'assets/images/cat/SpicesOne.png',
      'catText': 'Spices',
    },
    {
      'imgPath': 'assets/images/cat/vegetablesOne.png',
      'catText': 'Vegetables',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final utils = Utils(context);
    Color color = utils.color;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: TextWidget(
            text: 'Categories',
            color: color,
            textSize: 24,
            isTitle: true,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 240 / 250,
            crossAxisSpacing: 10, //Vertical spacing
            mainAxisSpacing: 10, //horizontal spacing
            children: List.generate(6, (index) {
              //after changing the parameters, color, catText and ImgPath
              //we pass the parameters from here
              return CategoriesWidget(
                //the widget is initially empty, then added this
                catText: catInfo[index]['catText'],
                imgPath: catInfo[index]['imgPath'],
                passedColor: gridColors[index],
                //for catText and imgPath, initialize a map like
                //for the btmBar.dart
              );
            }),
          ),
        ));
  }
}
