import 'package:flutter/material.dart';
import 'package:fmas_app/components/header/menu_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/images/logo_circular300x300.png',
            width: 50,
          ),
          SizedBox(width: 10),
          Text(
            "F+ Training",
            style: GoogleFonts.reenieBeanie(fontSize: 24),
          ),
          Spacer(),
          MenuButton(),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({Key? key, required this.title, required this.tapEvent})
      : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title,
          style: TextStyle(color: kTextColor, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
