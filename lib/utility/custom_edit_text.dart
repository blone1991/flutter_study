import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


enum InputType { date , password, number, text}
class EditText extends StatelessWidget {
  String subject;
  TextInputType inputType = TextInputType.text;
  EditText(this.subject, InputType type, {Key? key}) : super(key: key) {
    switch(type) {
       case InputType.date:
        inputType = TextInputType.datetime;
        break;
      case InputType.password:
        inputType = TextInputType.visiblePassword;
        break;
      case InputType.number:
        inputType = TextInputType.number;
        break;
      default:
        inputType = TextInputType.text;
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
      child: TextField(
        keyboardType: inputType,
        style: TextStyle( fontSize: 12, decoration:TextDecoration.underline ),
        decoration: InputDecoration (
          border: OutlineInputBorder(),
          labelText: subject,
        ),
      ),
    );
  }
}
