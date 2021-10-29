
import 'package:flutter/material.dart';
import 'package:shopping_app_api_project_gsg/helper/api_helper.dart';
import 'package:shopping_app_api_project_gsg/helper//db_helper.dart';
import 'package:shopping_app_api_project_gsg/models/product-response.dart';
import 'package:shopping_app_api_project_gsg/ui/pages/home-page.dart';

class Collection {
  String img;
  String title;
  Collection({this.img, this.title});
}
class Product{
  String img;
  String title;
  String price;
  Product({this.img,this.title,this.price});
}
//
// class HomeProvider extends ChangeNotifier{
//   int index = 0;
//   AnimateToTab(int index){
//     this.index = index;
//     notifyListeners();
//   }
//
//   List<ProductResponse> cartProducts;
//   List<ProductResponse> favouriteProducts;
//
//   List<Collection> collectios = [
//     Collection(img: 'assests/icons/spring.png', title: 'Spring'),
//     Collection(img: 'assests/icons/wedding.png', title: 'Wedding'),
//     Collection(img: 'assests/icons/wedding.png', title: 'Wedding'),
//     Collection(img: 'assests/icons/wedding.png', title: 'Wedding'),
//     Collection(img: 'assests/icons/spring.png', title: 'Spring'),
//     Collection(img: 'assests/icons/spring.png', title: 'Spring')
//   ];
//
//   List<Product> productF = [
//     Product(img: 'assests/icons/Group Product 1.png', title: 'Red Overalls',price: '\$39'),
//     Product(img: 'assests/icons/Group Product 2.png', title: 'Blue Overalls',price: '\$39'),
//     Product(img: 'assests/icons/Group Product 3.png', title: 'Yellow Overalls',price: '\$39'),
//     Product(img: 'assests/icons/Product Photo.png', title: 'Pink Fur Coat',price: '\$59'),
//     Product(img: 'assests/icons/Group Product 1.png', title: 'Red Overalls',price: '\$39'),
//     Product(img: 'assests/icons/Group Product 2.png', title: 'Blue Overalls',price: '\$39'),
//     Product(img: 'assests/icons/Group Product 3.png', title: 'Yellow Overalls',price: '\$39'),
//     Product(img: 'assests/icons/Product Photo.png', title: 'Pink Fur Coat',price: '\$59'),
//   ];
//
//
//
//   List<String> allCategories;
//   List<ProductResponse> allProducts;
//   List<ProductResponse> categoryProducts;
//   // List<List<ProductResponse>> allCategoryProduct;
//   var filteredList;
//   ProductResponse selectedProduct;
//   String selectedCategory = '';
//   getAllCategories() async {
//     List<dynamic> categories = await ApiHelper.apiHelper.getAllCategories();
//     allCategories = categories.map((e) => e.toString()).toList();
//     notifyListeners();
//     getCategoryProducts(allCategories.first);
//   }
//
//   getCategoryProducts(String category) async {
//     categoryProducts = null;
//     this.selectedCategory = category;
//     notifyListeners();
//     List<dynamic> products =
//         await ApiHelper.apiHelper.getCategoryProducts(category);
//     categoryProducts =
//         products.map((e) => ProductResponse.fromJson(e)).toList();
//     notifyListeners();
//   }
//
//   getAllProducts() async {
//     List<dynamic> products = await ApiHelper.apiHelper.getAllProducts();
//     allProducts = products.map((e) => ProductResponse.fromJson(e)).toList();
//     Map<String, ProductResponse> mp = {};
//     for (var item in allProducts){
//       mp[item.category]=item;
//     }
//     filteredList = mp.values.toList();
//     print(mp);
//     print(filteredList);
//     // for( var x in allProducts){
//     //   allCategoryProduct ;
//     // }
//     // print(allCategoryProduct);
//     notifyListeners();
//   }
//
//   getSpecificProduct(int id) async {
//     selectedProduct = null;
//     notifyListeners();
//     dynamic response = await ApiHelper.apiHelper.getSpecificProduct(id);
//     selectedProduct = ProductResponse.fromJson(response);
//     notifyListeners();
//   }
//
//   addToCart(ProductResponse productResponse) async {
//     bool productInCart = cartProducts.any((x) {
//       return x.id == productResponse.id;
//     });
//     // bool productInCart = cartProducts == null
//     //     ? false
//     //     : cartProducts.any((x) {
//     //         return x.id == productResponse.id;
//     //       });
//     await DbHelper.dbHelper.addProductToCart(productResponse);
//
//     getAllCartProdcts();
//   }
//
//   // updateProductInCart(ProductResponse productResponse) async {
//   //   await DbHelper.dbHelper.updateProductQuantity(productResponse);
//   //   getAllCartProdcts();
//   // }
//
//   addToFavourite(ProductResponse productResponse) async {
//     bool productInFavourite = favouriteProducts.any((x) {
//       return x.id == productResponse.id;
//     });
//     // bool productInFavourite = favouriteProducts == null
//     //     ? false
//     //     : favouriteProducts.any((x) {
//     //         return x.id == productResponse.id;
//     //       });
//
//     if (productInFavourite) {
//       deleteFromFavourite(productResponse.id);
//     } else {
//       await DbHelper.dbHelper.addProductToFavourite(productResponse);
//     }
//
//     getAllFavouriteProdcts();
//   }
//
//   login(String email, String password, String fcmToken) async {
//     print(email);
//     print(password);
//     print(fcmToken);
//     await ApiHelper.apiHelper.login(email, password, fcmToken);
//   }
//
//   addOrRemoveFromFavourite(int id) async {
//     await ApiHelper.apiHelper.addOrRemoveFromFavourite(id);
//   }
//
//   getFavourite() async {
//     await ApiHelper.apiHelper.getFavourite();
//   }
//
//   deleteFromCart(int id) async {
//     await DbHelper.dbHelper.deleteProductFromCart(id);
//     getAllCartProdcts();
//   }
//
//   deleteFromFavourite(int id) async {
//     await DbHelper.dbHelper.deleteProductFromFavourite(id);
//     getAllFavouriteProdcts();
//   }
//
//   getAllCartProdcts() async {
//     List<ProductResponse> products = await DbHelper.dbHelper.getAllCart();
//     this.cartProducts = products;
//     cartProducts.forEach((element) {});
//     notifyListeners();
//   }
//
//   getAllFavouriteProdcts() async {
//     List<ProductResponse> products = await DbHelper.dbHelper.getAllFavourite();
//     this.favouriteProducts = products;
//     notifyListeners();
//   }
// }

class HomeProvider extends ChangeNotifier {
    int index = 0;
  AnimateToTab(int index){
    this.index = index;
    notifyListeners();
  }

    List<Collection> collectios = [
    Collection(img: 'assests/icons/spring.png', title: 'Spring'),
    Collection(img: 'assests/icons/wedding.png', title: 'Wedding'),
    Collection(img: 'assests/icons/wedding.png', title: 'Wedding'),
    Collection(img: 'assests/icons/wedding.png', title: 'Wedding'),
    Collection(img: 'assests/icons/spring.png', title: 'Spring'),
    Collection(img: 'assests/icons/spring.png', title: 'Spring')
  ];

  List<Product> productF = [
    Product(img: 'assests/icons/Group Product 1.png', title: 'Red Overalls',price: '\$39'),
    Product(img: 'assests/icons/Group Product 2.png', title: 'Blue Overalls',price: '\$39'),
    Product(img: 'assests/icons/Group Product 3.png', title: 'Yellow Overalls',price: '\$39'),
    Product(img: 'assests/icons/Product Photo.png', title: 'Pink Fur Coat',price: '\$59'),
    Product(img: 'assests/icons/Group Product 1.png', title: 'Red Overalls',price: '\$39'),
    Product(img: 'assests/icons/Group Product 2.png', title: 'Blue Overalls',price: '\$39'),
    Product(img: 'assests/icons/Group Product 3.png', title: 'Yellow Overalls',price: '\$39'),
    Product(img: 'assests/icons/Product Photo.png', title: 'Pink Fur Coat',price: '\$59'),
  ];

  var filteredList;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List<ProductResponse> cartProducts;
  List<ProductResponse> favouriteProducts;
  // List<List<ProductResponse>> allCategoryProduct;
  List<String> allCategories;
  List<ProductResponse> allProducts;
  List<ProductResponse> categoryProducts;
  ProductResponse selectedProduct;
  String selectedCategory = '';
  getAllCategories() async {
    List<dynamic> categories = await ApiHelper.apiHelper.getAllCategories();
    allCategories = categories.map((e) => e.toString()).toList();
    notifyListeners();
    getCategoryProducts(allCategories.first);
  }

  getCategoryProducts(String category) async {
    categoryProducts = null;
    this.selectedCategory = category;
    notifyListeners();
    List<dynamic> products =
    await ApiHelper.apiHelper.getCategoryProducts(category);
    categoryProducts =
        products.map((e) => ProductResponse.fromJson(e)).toList();
    notifyListeners();
  }

  getAllProducts() async {
    List<dynamic> products = await ApiHelper.apiHelper.getAllProducts();
    allProducts = products.map((e) => ProductResponse.fromJson(e)).toList();
    Map<String, ProductResponse> mp = {};
    for (var item in allProducts){
      mp[item.category]=item;
    }
    filteredList = mp.values.toList();
    print(mp);
    print(filteredList);
    // for( var x in allProducts){
    //   allCategoryProduct ;
    // }
    // print(allCategoryProduct);
    notifyListeners();
  }

  getSpecificProduct(int id) async {
    selectedProduct = null;
    notifyListeners();
    dynamic response = await ApiHelper.apiHelper.getSpecificProduct(id);
    selectedProduct = ProductResponse.fromJson(response);
    notifyListeners();
  }

  addToCart(ProductResponse productResponse) async {
    // bool productInCart = cartProducts.any((x) {
    //   return x.id == productResponse.id;
    // });
    bool productInCart = cartProducts == null
        ? false
        : cartProducts.any((x) {
      return x.id == productResponse.id;
    });

    if (productInCart) {
      productResponse.quantity = cartProducts
          .where((element) => element.id == productResponse.id)
          .first
          .quantity;
      await DbHelper.dbHelper.updateProductQuantity(productResponse);
    } else {
      await DbHelper.dbHelper.addProductToCart(productResponse);
    }

    getAllCartProdcts();
  }

  updateProductInCart(ProductResponse productResponse) async {
    await DbHelper.dbHelper.updateProductQuantity(productResponse);
    getAllCartProdcts();
  }

  addToFavourite(ProductResponse productResponse) async {
    // bool productInFavourite = favouriteProducts.any((x) {
    //   return x.id == productResponse.id;
    // });
    bool productInFavourite = favouriteProducts == null
        ? false
        :   favouriteProducts.any((x) {
      return x.id == productResponse.id;
    });

    if (productInFavourite) {
      deleteFromFavourite(productResponse.id);
    } else {
      await DbHelper.dbHelper.addProductToFavourite(productResponse);
    }

    getAllFavouriteProdcts();
  }

  login(String email, String password, String fcmToken) async {
    print(email);
    print(password);
    print(fcmToken);
    await ApiHelper.apiHelper.login(email, password, fcmToken);
    }

  addOrRemoveFromFavourite(int id) async {
    await ApiHelper.apiHelper.addOrRemoveFromFavourite(id);
  }

  getFavourite() async {
    await ApiHelper.apiHelper.getFavourite();
  }

  deleteFromCart(int id) async {
    await DbHelper.dbHelper.deleteProductFromCart(id);
    getAllCartProdcts();
  }

  deleteFromFavourite(int id) async {
    await DbHelper.dbHelper.deleteProductFromFavourite(id);
    getAllFavouriteProdcts();
  }

  getAllCartProdcts() async {
    List<ProductResponse> products = await DbHelper.dbHelper.getAllCart();
    this.cartProducts = products;
    cartProducts.forEach((element) {
      print(element.quantity);
    });
    notifyListeners();
  }

  getAllFavouriteProdcts() async {
    List<ProductResponse> products = await DbHelper.dbHelper.getAllFavourite();
    this.favouriteProducts = products;
    notifyListeners();
  }



}
