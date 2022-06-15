// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';

class CommonInPutFeild extends StatefulWidget {
  String label;
  TextEditingController controller;
  String erroText;
  CommonInPutFeild({
    Key? key,
    required this.label,
    required this.controller,
    required this.erroText,
  }) : super(key: key);

  @override
  State<CommonInPutFeild> createState() => _CommonInPutFeildState();
}

class _CommonInPutFeildState extends State<CommonInPutFeild> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
        label: Text(widget.label),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
