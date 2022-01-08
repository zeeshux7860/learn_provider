import 'package:flutter/material.dart';

Widget textfield(
    {required String name,
    TextEditingController? controller,
    bool obscureText = false}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 8.0, top: 8.0),
        child: Text("Enter Your $name"),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextFormField(
          validator: (val) {
            if (val!.isEmpty) {
              return 'Please enter $name';
            } else {
              return null;
            }
          },
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              hintText: name,
              border: const OutlineInputBorder(),
              disabledBorder: const OutlineInputBorder(),
              focusedBorder: const OutlineInputBorder()),
        ),
      ),
    ],
  );
}
