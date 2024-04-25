import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneInput extends StatefulWidget {
  const PhoneInput({Key? key}) : super(key: key);

  @override
  _PhoneInputState createState() => _PhoneInputState();
}

class _PhoneInputState extends State<PhoneInput> {
  GlobalKey<FormState> _formKey = GlobalKey();

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context)
                      .requestFocus(focusNode); // فتح لوحة المفاتيح عند الضغط
                },
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              IntlPhoneField(
                focusNode: focusNode,
                decoration: InputDecoration(
                  // showCountryCode: false,
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                languageCode: "ar",
                searchText: "يرجى ادخال بلدك",
                showCountryFlag: false,
                // cursorRadius: Radius.circular(80.0),
                // countries: "syria",
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
                onCountryChanged: (country) {
                  print('Country changed to: ' + country.name);
                },
              ),
              SizedBox(height: 10),
              MaterialButton(
                child: Text('Submit'),
                color: Theme.of(context).primaryColor,
                textColor: const Color.fromARGB(255, 58, 47, 47),
                onPressed: () {
                  _formKey.currentState?.validate();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
