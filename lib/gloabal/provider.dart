import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:structure_app/provider/home.dart';

dynamic provider(BuildContext context) {
  return [
    ChangeNotifierProvider(
      create: (context) {
        return HomeProvider();
      },
    )
  ];
}
