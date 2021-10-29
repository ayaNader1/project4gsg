import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app_api_project_gsg/ui/pages/home-page.dart';
import 'package:shopping_app_api_project_gsg/ui/pages/main-page.dart';

class CustomButton extends StatelessWidget {
  // Function function;
  String label;
  // CustomButton(this.function, this.label);
  CustomButton(this.label);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 55,
      width: double.infinity,
      margin: EdgeInsets.symmetric( vertical: 10),
      child: RaisedButton(
        elevation: 0,
        color: Color(0xff00CBFF),
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        onPressed: () {
          // function();
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MyHomePage()),
            );

        },
        child: Text(label.toUpperCase(),
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}