import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_api_project_gsg/provider/myprovider.dart';

class CatWidget extends StatelessWidget {
  Collection collection;
  CatWidget({this.collection});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Stack(
        children: [
          Image.asset(
            collection.img,
            fit: BoxFit.cover,
          ),
          Positioned.fill(
              child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assests/icons/Rectangle.png',
              fit: BoxFit.cover,
            ),
          )),
          Positioned.fill(
              child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 15, left: 20),
              child: Text(
                collection.title.toUpperCase(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class CatWidgetTab extends StatelessWidget {
  String img;
  String title;
  CatWidgetTab({this.title,this.img});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Container(
              alignment: Alignment.center,
              height: 137,
              width: 327,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6)
              ),
              child: CachedNetworkImage(
                imageUrl: img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    width: 327,
                    height: 137,
                    child: Image.asset(
                      'assests/icons/Rectangle.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )),
          Positioned.fill(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  margin: EdgeInsets.only(bottom: 15, left: 50),
                  child: Text(
                    title.toUpperCase(),
                    style: GoogleFonts.montserrat(textStyle:TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1), )
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
