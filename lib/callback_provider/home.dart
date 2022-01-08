import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:structure_app/provider/home.dart';

class CallBackHome {
  final BuildContext context;

  CallBackHome(this.context);

  GlobalKey<FormState> get formKey => Provider.of<HomeProvider>(context).form;

  void submitForm() =>
      Provider.of<HomeProvider>(context, listen: false).submit(context);

  TextEditingController get nameController =>
      Provider.of<HomeProvider>(context, listen: false).nameController;

  TextEditingController get emailController =>
      Provider.of<HomeProvider>(context, listen: false).emailController;

  TextEditingController get passwordController =>
      Provider.of<HomeProvider>(context, listen: false).passwordController;
}
