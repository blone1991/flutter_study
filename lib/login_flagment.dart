import 'package:flutter/material.dart';
import 'package:flutter_app/app_main.dart';
import 'package:flutter_app/utility/custom_edit_text.dart';

class LoginFragment extends StatelessWidget {
  BuildContext mContext;
  LoginFragment(this.mContext,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          EditText("사업자번호", InputType.number),
          EditText("단말기번호", InputType.number),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.maxFinite, double.minPositive)),
              child: Text("확인", style: TextStyle(fontSize: 20),),
              onPressed: () {
                Navigator.pushNamed(context, "main");
                print("가맹점 다운로드 여기선 일단 성공했다고 보고 다른 페이지로 넘긴다.");
              },
            ),
          )
        ],
      ),
    );
  }

}



