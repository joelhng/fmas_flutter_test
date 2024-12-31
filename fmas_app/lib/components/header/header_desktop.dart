import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fmas_app/main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants.dart';

class HeaderDesktop extends ConsumerWidget {
  const HeaderDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          NavItem(
            title: 'Home',
            tapEvent: () {
              ref.read(selectedMenuProvider.notifier).state = "home";
            },
          ),
          NavItem(
            title: 'Nosotros',
            tapEvent: () {
              ref.read(selectedMenuProvider.notifier).state = "about";
            },
          ),
          NavItem(
            title: 'Servicios',
            tapEvent: () {
              ref.read(selectedMenuProvider.notifier).state = "services";
            },
          ),
          NavItem(
            title: 'Contacto',
            tapEvent: () {
              ref.read(selectedMenuProvider.notifier).state = "contact";
            },
          ),
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
