import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_groceries_application/screens/wishlist/wishlist_widget.dart';
import 'package:my_groceries_application/widgets/empty_screen.dart';
import 'package:my_groceries_application/widgets/text_widget.dart';

import '../../services/global_methods.dart';
import '../../services/utils.dart';
import '../../widgets/back_widget.dart';

class WishlistScreen extends StatelessWidget {
  static const routeName = "/WishlistScreen";
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
    bool _isEmpty = true;
    return _isEmpty == true
        ? const EmptyScreen(
            imgPath: 'assets/images/wishList.png',
            title: 'Your wishlist is empty',
            subtitle: 'Explore products and shortlist them here',
            buttonText: 'Explore products',
          )
        : Scaffold(
            appBar: AppBar(
                centerTitle: true,
                leading: const BackWidget(),
                automaticallyImplyLeading: false,
                elevation: 0,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                title: TextWidget(
                  text: 'Wishlist(2)',
                  color: color,
                  textSize: 22,
                  isTitle: true,
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      GlobalMethods.warningDialog(
                          title: 'Empty your wishlist',
                          subtitle: 'Are you sure?',
                          fct: () {},
                          context: context);
                    },
                    icon: Icon(
                      IconlyBroken.delete,
                      color: color,
                    ),
                  ),
                ]),
            body: MasonryGridView.count(
              crossAxisCount: 2,
              //mainAxisSpacing: 16,
              //crossAxisSpacing: 20,
              itemBuilder: (context, index) {
                return const WishlistWidget();
              },
            ),
          );
  }
}
