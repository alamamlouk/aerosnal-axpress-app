import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function handler;
  const AdaptiveFlatButton({Key? key, required this.text, required this.handler}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS?
    CupertinoButton(
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold
        ),
      ),
      onPressed: ()=>handler,
    ):TextButton(onPressed: ()=>handler, child: Text(text,style: const TextStyle(
      fontWeight: FontWeight.bold
    ),));
  }
}
