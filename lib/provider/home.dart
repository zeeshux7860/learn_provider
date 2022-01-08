import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeProvider extends ChangeNotifier {
  var form = GlobalKey<FormState>();

  // text controller
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void submit(BuildContext context) {
    if (form.currentState!.validate()) {
      print("yes it's valid");
      print("Your name is " + nameController.text);
      print("Your email is " + emailController.text);
      print("Your password is " + passwordController.text);
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Enter valid form data")));
    }
  }
}
