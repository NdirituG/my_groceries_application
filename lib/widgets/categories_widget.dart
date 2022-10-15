import 'package:flutter/material.dart';
import 'package:my_groceries_application/widgets/text_widget.dart';
import 'package:provider/provider.dart';

import '../provider/dark_theme_provider.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget(
      {super.key,
      required this.catText,
      required this.imgPath,
      required this.passedColor});
  final String catText, imgPath;
  final Color passedColor;
  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    double _screenWidth = MediaQuery.of(context).size.width;
    final Color color = themeState.getDarkTheme ? Colors.white : Colors.black;
    return InkWell(
      onTap: () {
        print("Category pressed");
      },
      child: Container(
        //height: _screenWidth * 0.6,
        decoration: BoxDecoration(
            //we change the color variable from Colors.red to color
            color: passedColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: passedColor.withOpacity(0.7),
              width: 2,
            )),
        child: Column(children: [
          Container(
            height: _screenWidth * 0.3,
            width: _screenWidth * 0.3,
            decoration: BoxDecoration(
                //the boxDecoration is not constant anymore after adding imgPath
                image: DecorationImage(
                    image: AssetImage(
                      //changed to use imgPath string
                      imgPath,
                    ),
                    fit: BoxFit.fill)),
          ),
          TextWidget(
            //category name also changed to use catText
            text: catText,
            color: color,
            textSize: 20,
            isTitle: true,
          ),
        ]),
      ),
    );
  }
}
