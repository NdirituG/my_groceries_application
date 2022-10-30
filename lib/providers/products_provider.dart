import 'package:flutter/cupertino.dart';

import '../models/products_model.dart';

class ProductsProvider with ChangeNotifier {
  List<ProductModel> get getProducts {
    return _productsList;
  }

  List<ProductModel> get getOnSaleProducts {
    return _productsList.where((element) => element.isOnSale).toList();
  }

  ProductModel findProdById(String productId) {
    return _productsList.firstWhere((element) => element.id == productId);
  }

  List<ProductModel> findByCategory(String categoryName) {
    List<ProductModel> _categoryList = _productsList
        .where((element) => element.productCategoryName
            .toLowerCase()
            .contains(categoryName.toLowerCase()))
        .toList();
    return _categoryList;
  }

  static final List<ProductModel> _productsList = [
    ProductModel(
      id: 'Apple',
      title: 'Apple',
      price: 30,
      salePrice: 25,
      imageUrl: 'assets/images/appleOne.png',
      productCategoryName: 'Fruits',
      isOnSale: true,
      isPiece: false,
    ),
    ProductModel(
      id: 'Avocado',
      title: 'Avocado',
      price: 40,
      salePrice: 30,
      imageUrl: 'assets/images/avocadoOne.png',
      productCategoryName: 'Fruits',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'Banana',
      title: 'Banana',
      price: 10,
      salePrice: 15,
      imageUrl: 'assets/images/bananaOne.png',
      productCategoryName: 'Fruits',
      isOnSale: true,
      isPiece: false,
    ),
    ProductModel(
      id: 'Pine Apple',
      title: 'Pine Apple',
      price: 80,
      salePrice: 100,
      imageUrl: 'assets/images/pineAppleOne.png',
      productCategoryName: 'Fruits',
      isOnSale: true,
      isPiece: false,
    ),
    ProductModel(
      id: 'Water Melon',
      title: 'Water Melon',
      price: 200,
      salePrice: 300,
      imageUrl: 'assets/images/waterMelonOne.png',
      productCategoryName: 'Fruits',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Plums',
      title: 'Plums',
      price: 100,
      salePrice: 70,
      imageUrl: 'assets/images/plumsOne.png',
      productCategoryName: 'Fruits',
      isOnSale: true,
      isPiece: false,
    ),
    // Vegi
    ProductModel(
      id: 'Cabbage',
      title: 'Cabagge',
      price: 30,
      salePrice: 23,
      imageUrl: 'assets/images/cabbageOne.png',
      productCategoryName: 'Vegetables',
      isOnSale: true,
      isPiece: false,
    ),
    ProductModel(
      id: 'Cauliflower',
      title: 'Cauliflower',
      price: 120,
      salePrice: 111,
      imageUrl: 'assets/images/cauliFlowerOne.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'Cucumber',
      title: 'Cucumber',
      price: 30,
      salePrice: 30,
      imageUrl: 'assets/images/cucumberOne.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Kales',
      title: 'Kales',
      price: 10,
      salePrice: 10,
      imageUrl: 'assets/images/kalesOne.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Spinach',
      title: 'Spinach',
      price: 30,
      salePrice: 30,
      imageUrl: 'assets/images/spinachOne.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Pumpkin',
      title: 'Pumpkin',
      price: 150,
      salePrice: 134,
      imageUrl: 'assets/images/pumpkinOne.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Bell pepper',
      title: 'Bell pepper',
      price: 20,
      salePrice: 13,
      imageUrl: 'assets/images/bellPepperOne.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'Potato',
      title: 'Potato',
      price: 100,
      salePrice: 85,
      imageUrl: 'assets/images/potatoOne.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: false,
    ),
    /*ProductModel(
      id: 'Radish',
      title: 'Radish',
      price: 0.99,
      salePrice: 0.79,
      imageUrl: 'https://i.ibb.co/YcN4ZsD/Radish.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Red peppers',
      title: 'Red peppers',
      price: 0.99,
      salePrice: 0.57,
      imageUrl: 'https://i.ibb.co/JthGdkh/Red-peppers.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Squash',
      title: 'Squash',
      price: 3.99,
      salePrice: 2.99,
      imageUrl: 'https://i.ibb.co/p1V8sq9/Squash.png',
      productCategoryName: 'Vegetables',
      isOnSale: true,
      isPiece: true,
    ),
    ProductModel(
      id: 'Tomatoes',
      title: 'Tomatoes',
      price: 0.99,
      salePrice: 0.39,
      imageUrl: 'https://i.ibb.co/PcP9xfK/Tomatoes.png',
      productCategoryName: 'Vegetables',
      isOnSale: true,
      isPiece: false,
    ),*/
    // Grains and legumes
    ProductModel(
      id: 'Wheat',
      title: 'Wheat',
      price: 1000,
      salePrice: 950,
      imageUrl: 'assets/images/wheatOne.png',
      productCategoryName: 'Grains',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Peas',
      title: 'Peas',
      price: 300,
      salePrice: 243,
      imageUrl: 'assets/images/peasOne.png',
      productCategoryName: 'Grains',
      isOnSale: false,
      isPiece: false,
    ),

    ProductModel(
      id: 'Dengu',
      title: 'Dengu',
      price: 400,
      salePrice: 378,
      imageUrl: 'assets/images/denguOne.png',
      productCategoryName: 'Herbs',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Yellow Beans',
      title: 'Yellow Beans',
      price: 200,
      salePrice: 122,
      imageUrl: 'assets/images/yellowBeansOne.png',
      productCategoryName: 'Herbs',
      isOnSale: false,
      isPiece: false,
    ),
    /*ProductModel(
      id: 'Buk-choy',
      title: 'Buk-choy',
      price: 1.99,
      salePrice: 0.99,
      imageUrl: 'https://i.ibb.co/MNDxNnm/Buk-choy.png',
      productCategoryName: 'Herbs',
      isOnSale: true,
      isPiece: true,
    ),
    ProductModel(
      id: 'Chinese-cabbage-wombok',
      title: 'Chinese-cabbage-wombok',
      price: 0.99,
      salePrice: 0.5,
      imageUrl: 'https://i.ibb.co/7yzjHVy/Chinese-cabbage-wombok.png',
      productCategoryName: 'Herbs',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'Kangkong',
      title: 'Kangkong',
      price: 0.99,
      salePrice: 0.5,
      imageUrl: 'https://i.ibb.co/HDSrR2Y/Kangkong.png',
      productCategoryName: 'Herbs',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'Leek',
      title: 'Leek',
      price: 0.99,
      salePrice: 0.5,
      imageUrl: 'https://i.ibb.co/Pwhqkh6/Leek.png',
      productCategoryName: 'Herbs',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'Spinach',
      title: 'Spinach',
      price: 0.89,
      salePrice: 0.59,
      imageUrl: 'https://i.ibb.co/bbjvgcD/Spinach.png',
      productCategoryName: 'Herbs',
      isOnSale: true,
      isPiece: true,
    ),
    ProductModel(
      id: 'Almond',
      title: 'Almond',
      price: 8.99,
      salePrice: 6.5,
      imageUrl: 'https://i.ibb.co/c8QtSr2/almand.jpg',
      productCategoryName: 'Nuts',
      isOnSale: true,
      isPiece: false,
    ),*/
  ];
}
