import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const Home({Key? key, required this.mobileBody, required this.desktopBody})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileBody;
      } else {
        return desktopBody;
      }
    });
  }
}
