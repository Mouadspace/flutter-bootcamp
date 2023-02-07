import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      //  backgroundColor: Colors.pink[200],
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // Container(
          //   width: width,
          // ),
          Text("hey what you doing in home screen ?"),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('go back ? '),
          )
        ]),
      ),
    );
  }
}
