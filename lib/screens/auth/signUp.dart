import 'package:flutter/material.dart';
import 'package:flutter_a/screens/auth/signIn.dart';
import 'package:flutter_a/widgets/password_visibility.dart';
import 'package:flutter_svg/flutter_svg.dart';

final keyForm = GlobalKey<FormState>();
String emailValue = "";

class signUp extends StatelessWidget {
  const signUp({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 32, 16, 8),
            child: Form(
              key: keyForm,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // this make my the app crash when clicking on continue
                          // somehow the app dont know nextpage Controller
                          // so i used instead pop
                          // Navigator.pushNamed(context, "/onBording");
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.chevron_left_rounded,
                          color: Color(0xff6f708b),
                          size: 35,
                        ),
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xffacadc1),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Icon(
                        Icons.chevron_left_rounded,
                        color: Colors.transparent,
                        size: 35,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Register Account",
                    style: TextStyle(
                      color: Color(0xff26273b),
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Complete your details or continue \nwith social media",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffacadc1),
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 45),
                  TextFormField(
                    onSaved: (newValue) {
                      emailValue = newValue!;
                    },
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'This field is required';
                      }
                      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        return "Please enter a valid email address";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                          left: 40, top: 19, bottom: 19, right: 40),
                      label: const Text("Email"),
                      hintText: "Enter your email",
                      hintStyle: TextStyle(color: Color(0xffd6d6e1)),
                      suffixIcon: const Padding(
                        padding: EdgeInsets.only(right: 25),
                        child: Icon(Icons.email_outlined),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color(0xffacadc1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  const PasswordVisibility(
                      label: "Password", hint: "Enter your password"),
                  const SizedBox(
                    height: 37,
                  ),
                  const PasswordVisibility(
                    label: "Confirm Password",
                    hint: "Re-Enter your password",
                    confirmPassword: true,
                  ),
                  const SizedBox(height: 45),
                  ElevatedButton(
                    onPressed: () {
                      if (keyForm.currentState!.validate()) {
                        keyForm.currentState!.save();

                        Navigator.pushNamed(context, "/home");
                      }
                    },
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffea7445),
                      onPrimary: Colors.white,
                      minimumSize: const Size.fromHeight(57),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                  const SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xfff0f0f5),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/svg/google.svg",
                          width: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xfff0f0f5),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/svg/facebook.svg",
                          width: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xfff0f0f5),
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          "assets/icons/svg/twitter.svg",
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "By continuing your confirm that you agree \nwith our Term and Condtion",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffacadc1),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
