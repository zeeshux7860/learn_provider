import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:structure_app/query/global.dart';
import 'package:structure_app/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: globalHandler.providerList(context),
      child: const MaterialApp(
        home: HomePage(
          title: "Home Page Provider",
        ),
      ),
    );
  }
}
