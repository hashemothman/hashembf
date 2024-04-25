import 'package:bas_fast/core/constant/color.dart';
import 'package:bas_fast/view/widget/auth_widget/phone-input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text('Title'),
          ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset('assets/images/logo.png')),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.30,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(5),
                      ),
                    ),
                    color: AppColor.buttonColor,
                    onPressed: () {},
                    child: Text("البريد الالكتروني"),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width * 0.30,
                    color: AppColor.buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.horizontal(
                        right: Radius.circular(5),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("رقم الجوال"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
