import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app_api_project_gsg/models/product-response.dart';
import 'package:shopping_app_api_project_gsg/provider/myprovider.dart';
import 'package:shopping_app_api_project_gsg/ui/widgets/custom-fav-widget.dart';

class WishListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<HomeProvider>(
        builder: (context, provider, x) {
          List<ProductResponse> products = provider.favouriteProducts;
         return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Color(0xff6DCEE7), //change your color here
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Wish List',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 2,
                    ),
                  )),
              SizedBox(height: 20,),
              products == null
                  ?Container() :
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
                        child: CustomWidgetFav()
                    );
                  }),
            ],
          ),
        ),
      );

        }

      );
    }
  }

