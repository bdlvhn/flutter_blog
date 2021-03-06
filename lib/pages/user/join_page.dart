import 'package:flutter/material.dart';

import '../../components/custom_elevated_button.dart';
import '../../components/custom_text_form_field.dart';

class JoinPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Container(
            alignment: Alignment.center,
            height: 200,
            child: Text(
              "회원가입 페이지",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _joinForm()
        ],
      ),
    );
  }

  Widget _joinForm() {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(hint: "Enter Username"),
          CustomTextFormField(hint: "Enter Password"),
          CustomTextFormField(hint: "Enter Email"),
          CustomElevatedButton(text: "회원가입"),
        ],
      ),
    );
  }
}
