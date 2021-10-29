import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app_api_project_gsg/models/product-response.dart';
import 'package:shopping_app_api_project_gsg/provider/myprovider.dart';
import 'package:shopping_app_api_project_gsg/ui/widgets/custom-btn.dart';
import 'package:shopping_app_api_project_gsg/ui/widgets/custom-cart-widget.dart';
import 'package:shopping_app_api_project_gsg/ui/widgets/custom-fav-widget.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color(0xff6DCEE7), //change your color here
        ),
      ),
      body: Consumer<HomeProvider>(
        builder: (context, provider, x) {
          List<ProductResponse> products = provider.cartProducts;
          return products == null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset('assests/icons/icon_cart.svg'),
                      SizedBox(height: 27,),
                      Text(
                          'Your cart is empty.\nFill your cart with great products from Marier.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1,
                            ),
                          )),
                      SizedBox(height: 150,),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: CustomButton('SHOP NOW')),
                      SizedBox(height: 100,),
                    ],
                  ),
                )
              : Container(
            padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text('Shopping Bag',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 2,
                          ),
                        )),
                    SizedBox(height: 20,),
                    GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(5),
                            color: Colors.white,
                            child: CustomWidgetCart()
                          );
                        }),
                  ],
                ),
              );
        },
      ),
    );
  }
}
