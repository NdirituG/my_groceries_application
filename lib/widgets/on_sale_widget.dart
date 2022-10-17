import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:my_groceries_application/services/utils.dart';
import 'package:my_groceries_application/widgets/heart_btn.dart';
import 'package:my_groceries_application/widgets/price_widget.dart';
import 'package:my_groceries_application/widgets/text_widget.dart';

class OnSaleWidget extends StatefulWidget {
  const OnSaleWidget({super.key});

  @override
  State<OnSaleWidget> createState() => _OnSaleWidgetState();
}

class _OnSaleWidgetState extends State<OnSaleWidget> {
  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    final theme = Utils(context).getTheme;
    Size size = Utils(context).getScreenSize;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).cardColor.withOpacity(0.9),
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //replaced image.network with image.asset
                  children: [
                    FancyShimmerImage(
                      imageUrl:
                          'https://media.istockphoto.com/photos/banana-picture-id1184345169?k=20&m=1184345169&s=612x612&w=0&h=EKwCw7Zx20N3l8G_rQI6KcitWTQ5ahkgmEBr2QA1FMk=',
                      height: size.width * 0.18,
                      width: size.width * 0.18,
                      boxFit: BoxFit.fill,
                    ),
                    Column(
                      children: [
                        TextWidget(
                          text: '1Kg',
                          color: color,
                          textSize: 22,
                          isTitle: true,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                print('Bag button is pressed');
                              },
                              child: Icon(
                                IconlyLight.bag2,
                                size: 22,
                                color: color,
                              ),
                            ),
                            HeartBTN(),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const PriceWidget(
                  salePrice: 50,
                  price: 100,
                  textPrice: '1',
                  isOnSale: true,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextWidget(
                  text: 'Product title',
                  color: color,
                  textSize: 16,
                  isTitle: true,
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
