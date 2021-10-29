import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app_api_project_gsg/helper/db_helper.dart';
import 'package:shopping_app_api_project_gsg/helper/sp_helper.dart';
import 'package:shopping_app_api_project_gsg/provider/myprovider.dart';
import 'package:shopping_app_api_project_gsg/ui/pages/splach_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DbHelper.dbHelper.initDatabase();
  SpHelper.spHelper.initSharedPrefrences();
  runApp(ChangeNotifierProvider<HomeProvider>(
    create: (context) => HomeProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplachPage(),
    ),
  ));
}




