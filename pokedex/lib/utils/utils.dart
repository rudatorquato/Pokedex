import 'package:flutter/material.dart';

back(BuildContext context, Widget? page, data) async {
  if (Navigator.canPop(context) || page == null) {
    Navigator.pop(context, data);
  } else {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}

push(BuildContext context, Widget page) async {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}

to(BuildContext context, Widget page) async {
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (context) => page),
  );
}