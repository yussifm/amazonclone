import "package:flutter/material.dart";

class CommonBtn extends StatelessWidget {
  final String BtnName;
  final OnpressedFunc;

  const CommonBtn(
      {Key? key, required this.BtnName, required this.OnpressedFunc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: ElevatedButton(
          onPressed: OnpressedFunc, child: Text(BtnName), style: ElevatedButton.styleFrom(
            maximumSize: const Size(double.maxFinite, 50)
          ),),
    );
  }
}
