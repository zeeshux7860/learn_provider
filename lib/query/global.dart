// this is my all provider path
import 'package:flutter/cupertino.dart';
import 'package:structure_app/gloabal/provider.dart';

class GlobalHandler {
  dynamic providerList(BuildContext context) {
    return provider(context);
  }
}

GlobalHandler globalHandler = GlobalHandler();
