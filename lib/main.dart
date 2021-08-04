import 'package:flutter/material.dart';
import 'package:flutter_app/app_main.dart';
import 'package:flutter_app/login_flagment.dart';
import 'package:flutter_app/utility/custom_edit_text.dart';

void main() {
  runApp (TestApp());
}

class TestApp extends StatelessWidget {
  TestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      routes: <String, WidgetBuilder> {
        "login" : (context) {return LoginFragment(context);},
        "main" : (context) {return AppMainPage(context);},
      },
      home: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.blueAccent,
                title: Center(
                  child: MaterialButton(
                    onPressed: () {},
                    onLongPress: () {print("show Admin Dialog");},
                    child: Icon(Icons.title_outlined),
                  ),
                ),
              ),
              body: LoginFragment(context)
          ),







      // builder: (context, child) {
      //   return Scaffold(
      //       appBar: AppBar(
      //         backgroundColor: Colors.blueAccent,
      //         title: Center(
      //           child: MaterialButton(
      //             onPressed: () {},
      //             onLongPress: () {print("show Admin Dialog");},
      //             child: Icon(Icons.title_outlined),
      //           ),
      //         ),
      //       ),
      //       body: LoginFragment(context)
      //   );
      // },
    );
  }
}
