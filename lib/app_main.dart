import 'package:flutter/material.dart';

class AppMainPage extends StatefulWidget {
  BuildContext mContext;
  AppMainPage(this.mContext, {Key? key}) : super(key: key);

  @override
  _AppMainPageState createState() => _AppMainPageState();
}

class _AppMainPageState extends State<AppMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(children: [
        Row(children: [IconButton(onPressed: () => print("신용"), icon: Icon(Icons.credit_card_outlined)), IconButton(onPressed: () => print("신용"), icon: Icon(Icons.control_point))],),
        Row(children: [IconButton(onPressed: () => print("현금"), icon: Icon(Icons.money_off_outlined)), IconButton(onPressed: () => print("영수증"), icon: Icon(Icons.receipt))],),
      ],
      ),
    );
  }
}
