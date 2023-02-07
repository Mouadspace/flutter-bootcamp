import 'package:flutter/material.dart';

bool isChecked = false;

class CheckBocksStateFull extends StatefulWidget {
  const CheckBocksStateFull({Key? key}) : super(key: key);

  @override
  State<CheckBocksStateFull> createState() => _CheckbocksValueState();
}

class _CheckbocksValueState extends State<CheckBocksStateFull> {
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (bool? value) {
        isChecked = value!;
        setState(() {});
      },
    );
  }
}
