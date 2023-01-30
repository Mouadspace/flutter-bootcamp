import 'package:flutter/material.dart';

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
                // TextField(
                //   textAlign: TextAlign.left,
                //   decoration: InputDecoration(
                //     hintText: 'Enter Something',
                //     contentPadding: EdgeInsets.only(left: 20),
                //   ),
                // ),
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
                  height: 37,
                ),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                        left: 40, top: 19, bottom: 19, right: 40),
                    label: const Text("Confirm Password"),
                    hintText: "Re-Enter your password",
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
                const SizedBox(height: 45),
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
                      child: Image.asset(
                        "assets/icons/png/google.png",
                        scale: 2,
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
                      child: Image.asset(
                        "assets/icons/png/facebook.png",
                        scale: 2,
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
                      child: Image.asset(
                        "assets/icons/png/twitter.png",
                        scale: 2,
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
    );
  }
}
