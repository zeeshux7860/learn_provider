import 'package:flutter/material.dart';
import 'package:structure_app/callback_provider/home.dart';
import 'package:structure_app/components/textfield.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Form(
        key: CallBackHome(context).formKey,
        child: ListView(
          children: [
            textfield(
                name: "Name", controller: CallBackHome(context).nameController),
            textfield(
                name: "Email",
                controller: CallBackHome(context).emailController),
            textfield(
                name: "Password",
                obscureText: true,
                controller: CallBackHome(context).passwordController)
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Card(
            margin: const EdgeInsets.all(0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: CallBackHome(context).submitForm,
                child: Container(
                  child: const Center(
                      child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient:
                          LinearGradient(colors: [Colors.cyan, Colors.blue])),
                ),
              ),
            )),
      ),
    );
  }
}
