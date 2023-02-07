import 'package:flutter/material.dart';

bool isVisible = false;
String passwordValue = "";
var confirmPass;

class PasswordVisibility extends StatefulWidget {
  final label;
  final hint;
  final confirmPassword;
  const PasswordVisibility(
      {Key? key,
      required String this.label,
      required String this.hint,
      bool this.confirmPassword = false})
      : super(key: key);

  @override
  State<PasswordVisibility> createState() => _PasswordVisibilityState();
}

class _PasswordVisibilityState extends State<PasswordVisibility> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (newValue) {
        passwordValue = newValue!;
      },
      validator: ((value) {
        if (value != confirmPass && widget.confirmPassword) {
          return "Password must be same as above";
        }
        confirmPass = value;

        if (value!.length < 8) {
          return "Password must be atleast 8 characters long";
        } else {
          return null;
        }
      }),
      obscureText: !isVisible,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.only(left: 40, top: 19, bottom: 19, right: 40),
        label: Text(widget.label),
        hintText: widget.hint,
        hintStyle: TextStyle(color: Color(0xffd6d6e1)),
        suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 25),
            child: GestureDetector(
                onTap: () {
                  isVisible = !isVisible;
                  setState(() {});
                },
                child:
                    Icon(isVisible ? Icons.visibility : Icons.visibility_off))),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: Color(0xffacadc1),
          ),
        ),
      ),
    );
  }
}
