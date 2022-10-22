import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:my_groceries_application/services/global_methods.dart';
import 'package:my_groceries_application/widgets/text_widget.dart';

import '../../inner_screens/products_details.dart';
import '../../services/utils.dart';

class OrderWidget extends StatefulWidget {
  const OrderWidget({super.key});

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;

    return ListTile(
      subtitle: const Text('Paid: Ksh 120'),
      onTap: () {
        GlobalMethods.navigateTo(
            ctx: context, routeName: ProductDetails.routeName);
      },
      leading: FancyShimmerImage(
        width: size.width * 0.2,
        imageUrl:
            'https://media.istockphoto.com/photos/banana-picture-id1184345169?k=20&m=1184345169&s=612x612&w=0&h=EKwCw7Zx20N3l8G_rQI6KcitWTQ5ahkgmEBr2QA1FMk=',
        boxFit: BoxFit.fill,
      ),
      title: TextWidget(text: 'Title x12', color: color, textSize: 18),
      trailing: TextWidget(text: '21/10/2022', color: color, textSize: 18),
    );
  }
}
