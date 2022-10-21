import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:my_groceries_application/inner_screens/products_details.dart';
import 'package:my_groceries_application/services/global_methods.dart';
import 'package:my_groceries_application/widgets/heart_btn.dart';
import 'package:my_groceries_application/widgets/text_widget.dart';

import '../../services/utils.dart';

class WishlistWidget extends StatelessWidget {
  const WishlistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          GlobalMethods.navigateTo(
              ctx: context, routeName: ProductDetails.routeName);
        },
        child: Container(
          height: size.height * 0.20,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            border: Border.all(
              color: color,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 8),
                width: size.width * 0.2,
                height: size.width * 0.2,
                child: FancyShimmerImage(
                  imageUrl:
                      'https://media.istockphoto.com/photos/banana-picture-id1184345169?k=20&m=1184345169&s=612x612&w=0&h=EKwCw7Zx20N3l8G_rQI6KcitWTQ5ahkgmEBr2QA1FMk=',
                  boxFit: BoxFit.fill,
                ),
              ),
              Column(
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            IconlyLight.bag2,
                            color: color,
                          ),
                        ),
                        HeartBTN(),
                      ],
                    ),
                  ),
                  Flexible(
                    child: TextWidget(
                      text: 'Title',
                      color: color,
                      textSize: 20,
                      maxLines: 2,
                      isTitle: true,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextWidget(
                    text: 'Ksh 50',
                    color: color,
                    textSize: 18,
                    maxLines: 1,
                    isTitle: true,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
