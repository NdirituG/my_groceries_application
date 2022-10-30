import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:my_groceries_application/inner_screens/product_details.dart';
import 'package:my_groceries_application/services/global_methods.dart';

import '../../services/utils.dart';
import '../../widgets/text_widget.dart';

class OrderWidget extends StatefulWidget {
  const OrderWidget({Key? key}) : super(key: key);

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    return ListTile(
      subtitle: const Text('Paid: Ksh 50'),
      onTap: () {
        GlobalMethods.navigateTo(
            ctx: context, routeName: ProductDetails.routeName);
      },
      leading: FancyShimmerImage(
        width: size.width * 0.2,
        imageUrl:
            'https://purepng.com/public/uploads/large/purepng.com-red-appleappleapplesfruitsweet-1701527180174lrnig.png',
        boxFit: BoxFit.fill,
      ),
      title: TextWidget(text: 'Title  x12', color: color, textSize: 18),
      trailing: TextWidget(text: '30/10/2022', color: color, textSize: 18),
    );
  }
}
