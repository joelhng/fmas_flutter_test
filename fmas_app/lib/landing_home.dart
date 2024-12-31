import 'package:flutter/material.dart';
import 'package:fmas_app/components/body.dart';
import 'package:fmas_app/components/footer.dart';
import 'package:fmas_app/components/header/header.dart';
import 'package:fmas_app/components/header/header_desktop.dart';
import 'package:fmas_app/components/header/header_mobile.dart';

class LandingHome extends StatelessWidget {
  const LandingHome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 10,
              child: Header(
                desktopBody: HeaderDesktop(),
                mobileBody: HeaderMobile(),
              ),
            ),
            Expanded(
              flex: 85,
              child: Body(),
            ),
            Expanded(
              flex: 5,
              child: Footer(),
            ),
          ],
        ),
      ),
    );
  }
}
