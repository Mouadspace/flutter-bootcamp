import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class signIn extends StatelessWidget {
  const signIn({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 32, 16, 8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(
                      Icons.chevron_left_rounded,
                      color: Color(0xff6f708b),
                      size: 35,
                    ),
                    Text(
                      'Sign In',
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
                  "Welcome Back",
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
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffacadc1),
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 79),
                TextField(
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
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        color: Color(0xffacadc1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
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
                TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                        left: 40, top: 19, bottom: 19, right: 40),
                    label: const Text("Password"),
                    hintText: "Enter your password",
                    hintStyle: TextStyle(color: Color(0xffd6d6e1)),
                    suffixIcon: const Padding(
                        padding: EdgeInsets.only(right: 25),
                        child: Icon(Icons.lock_open_rounded)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        color: Color(0xffacadc1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        color: Color(0xffacadc1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (bool) => {}),
                        const Text(
                          "Remember me",
                          style: TextStyle(
                            color: Color(0xffacadc1),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: Color(0xffacadc1),
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                ElevatedButton(
                  onPressed: () {},
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
                    minimumSize: const Size.fromHeight(57),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Don't have an acount?",
                      style: TextStyle(
                        color: Color(0xffacadc1),
                        height: 1.5,
                      ),
                    ),
                    Text(
                      " Sign Up",
                      style: TextStyle(
                        color: Color(0xffea7445),
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
