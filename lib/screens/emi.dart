

import 'package:emi_calculator/widgets/slider.dart';

import '/widgets/textbox.dart';
import 'package:flutter/material.dart';

class Emi extends StatefulWidget {
  const Emi({ Key? key }) : super(key: key);

  @override
  _EmiState createState() => _EmiState();
}

class _EmiState extends State<Emi> {
  int _value =1; // with in dart file
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3= TextEditingController();
  takeSliderValue(int value){
    _value = value; // Scope Increase
    print("Rec Value From Slider $value");

    t3.text = _value.toString();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    TextBox tb = TextBox(label:'Tenure', iconData:Icons.money_rounded, tc:t3 );
    tb.setFunction(takeSliderValue);
    return Scaffold(
      body: Column(children: [
        TextBox(label:'Loan Amount',iconData: Icons.money, tc: t1 )
        ,TextBox(label:'ROI', iconData:Icons.monetization_on, tc:t2 ),
        tb,
        MySlider(takeSliderValue, _value) // Pass Fn as an Argument to the Constructor
      ],),
      appBar: AppBar(title: Text('Emi Calculator'),
        backgroundColor: Colors.black87,),
    );
  }
}