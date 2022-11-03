import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import '../models/products_model.dart';

class ProductsProvider with ChangeNotifier {
  static final List<ProductModel> _productsList = [];
  List<ProductModel> get getProducts {
    return _productsList;
  }

  List<ProductModel> get getOnSaleProducts {
    return _productsList.where((element) => element.isOnSale).toList();
  }

  Future<void> fetchProducts() async {
    await FirebaseFirestore.instance
        .collection('products')
        .get()
        .then((QuerySnapshot productSnapshot) {
      productSnapshot.docs.forEach((element) {
        _productsList.insert(
            0,
            ProductModel(
              id: element.get('id'),
              title: element.get('title'),
              imageUrl: element.get('imageUrl'),
              productCategoryName: element.get('productCategoryName'),
              price: double.parse(
                element.get('price'),
              ),
              salePrice: element.get('salePrice'),
              isOnSale: element.get('isOnSale'),
              isPiece: element.get('isPiece'),
            ));
      });
    });
    notifyListeners();
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

  /* static final List<ProductModel> _productsList = [
    ProductModel(
      id: 'Apple',
      title: 'Apple',
      price: 30,
      salePrice: 25,
      imageUrl: 'https://i.ibb.co/p3dD7Lk/appleOne.png',
      productCategoryName: 'Fruits',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Avocado',
      title: 'Avocado',
      price: 40,
      salePrice: 30,
      imageUrl: 'https://i.ibb.co/T073rMW/avocado-One.png',
      productCategoryName: 'Fruits',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'Banana',
      title: 'Banana',
      price: 190,
      salePrice: 175,
      imageUrl: 'https://i.ibb.co/JtfhmcW/banana-One.png',
      productCategoryName: 'Fruits',
      isOnSale: true,
      isPiece: false,
    ),
    ProductModel(
      id: 'Pine Apple',
      title: 'Pine Apple',
      price: 200,
      salePrice: 170,
      imageUrl: 'https://i.ibb.co/3BnmKH3/pine-Apple-One.png',
      productCategoryName: 'Fruits',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'Water Melon',
      title: 'Water Melon',
      price: 250,
      salePrice: 205,
      imageUrl: 'https://i.ibb.co/mzsTq38/water-Melon-One.png',
      productCategoryName: 'Fruits',
      isOnSale: true,
      isPiece: true,
    ),
    ProductModel(
      id: 'Plums',
      title: 'Plums',
      price: 350,
      salePrice: 300,
      imageUrl: 'https://i.ibb.co/t8mv1G7/plumsOne.png',
      productCategoryName: 'Fruits',
      isOnSale: true,
      isPiece: false,
    ),
    // Vegi
    ProductModel(
      id: 'Cabbage',
      title: 'Cabagge',
      price: 50,
      salePrice: 43.50,
      imageUrl: 'https://i.ibb.co/yNhcqC9/cabbage-One.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'Cauliflower',
      title: 'Cauliflower',
      price: 230,
      salePrice: 200,
      imageUrl: 'https://i.ibb.co/5BmGs6w/cauli-Flower-One.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'Cucumber',
      title: 'Cucumber',
      price: 100,
      salePrice: 89,
      imageUrl: 'https://i.ibb.co/t4Dy5rD/cucumber-One.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Kales',
      title: 'Kales',
      price: 30,
      salePrice: 27,
      imageUrl: 'https://i.ibb.co/LtvrmDS/kalesOne.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Spinach',
      title: 'Spinach',
      price: 40,
      salePrice: 33,
      imageUrl: 'https://i.ibb.co/6H05mvK/spinach-One.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Pumpkin',
      title: 'Pumpkin',
      price: 195,
      salePrice: 174.99,
      imageUrl: 'https://i.ibb.co/7gD2BCQ/pumpkin-One.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: true,
    ),
    ProductModel(
      id: 'Bell pepper',
      title: 'Bell pepper',
      price: 256.50,
      salePrice: 230.34,
      imageUrl: 'https://i.ibb.co/fGWyw5w/bell-Pepper-One.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Potato',
      title: 'Potato',
      price: 40,
      salePrice: 34.50,
      imageUrl: 'https://i.ibb.co/FntLx3y/potato-One.png',
      productCategoryName: 'Vegetables',
      isOnSale: false,
      isPiece: false,
    ),
    // Grains and legumes
    ProductModel(
      id: 'Wheat',
      title: 'Wheat',
      price: 22.16,
      salePrice: 20.00,
      imageUrl: 'https://i.ibb.co/TmmVxTY/wheatOne.png',
      productCategoryName: 'Grains',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Peas',
      title: 'Peas',
      price: 75.41,
      salePrice: 70,
      imageUrl: 'https://i.ibb.co/WGZ3Dn4/peasOne.png',
      productCategoryName: 'Grains',
      isOnSale: true,
      isPiece: false,
    ),

    ProductModel(
      id: 'Green Grams',
      title: 'Green Grams',
      price: 145,
      salePrice: 143.30,
      imageUrl: 'https://i.ibb.co/bPGGyGq/denguOne.png',
      productCategoryName: 'Grains',
      isOnSale: false,
      isPiece: false,
    ),
    ProductModel(
      id: 'Yellow Beans',
      title: 'Yellow Beans',
      price: 260,
      salePrice: 255,
      imageUrl: 'https://i.ibb.co/5Gxsz87/yellow-Beans-One.png',
      productCategoryName: 'Grains',
      isOnSale: false,
      isPiece: false,
    ),
  ]; */
}
