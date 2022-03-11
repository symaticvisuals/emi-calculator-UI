import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  late String label;
  late IconData iconData;
  late TextEditingController tc;
  late Function fn;

  setFunction(Function fn){
    this.fn = fn;
  }

  TextBox({Key? key,  required String label, required IconData iconData, required TextEditingController tc  }) : super(key: key){
    this.label = label;
    this.iconData = iconData;
    this.tc = tc;

  }
  //TextBox(this.label, this.iconData, this.tc, this.fn);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: TextField(
        onChanged: (String value){
          fn(int.parse(value));
        },
        controller: tc,
        decoration: InputDecoration(
            suffixIcon: Icon(iconData),
            border: OutlineInputBorder(borderRadius:
            BorderRadius.circular(10)),
            label: Text(label),
            hintText: 'Type $label'
        ),
      ),
    );
  }
}