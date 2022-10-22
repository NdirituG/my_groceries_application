import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_groceries_application/inner_screens/feeds_screen.dart';
import 'package:my_groceries_application/services/global_methods.dart';
import 'package:my_groceries_application/widgets/text_widget.dart';

import '../services/utils.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen(
      {super.key,
      required this.imgPath,
      required this.title,
      required this.subtitle,
      required this.buttonText});
  final String imgPath, title, subtitle, buttonText;

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    final themeState = Utils(context).getTheme;
    Size size = Utils(context).getScreenSize;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                imgPath,
                width: double.infinity,
                height: size.height * 0.3,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Ooooops!",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextWidget(
                text: title,
                color: Colors.cyan,
                textSize: 20,
              ),
              const SizedBox(
                height: 10,
              ),
              TextWidget(
                text: subtitle,
                color: Colors.cyan,
                textSize: 20,
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: BorderSide(
                      color: color,
                    ),
                  ),
                  primary: Theme.of(context).colorScheme.secondary,
                  onPrimary: color,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                ),
                onPressed: () {
                  GlobalMethods.navigateTo(
                    ctx: context,
                    routeName: FeedsScreen.routeName,
                  );
                },
                child: TextWidget(
                  text: buttonText,
                  textSize: 20,
                  color:
                      themeState ? Colors.grey.shade300 : Colors.grey.shade600,
                  isTitle: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
