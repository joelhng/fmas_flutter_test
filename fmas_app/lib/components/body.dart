import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fmas_app/components/home/home.dart';
import 'package:fmas_app/components/home/home_desktop.dart';
import 'package:fmas_app/components/home/home_mobile.dart';
import 'package:fmas_app/components/services/services.dart';
import 'package:fmas_app/main.dart';

class Body extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedValue = ref.watch(selectedMenuProvider);

    switch (selectedValue) {
      case "home":
        return Home(
          mobileBody: HomeMobile(),
          desktopBody: HomeDesktop(),
        );
      case "about":
        return Center(child: Text("Adjust your Settings!"));
      case "contact":
        return Center(child: Text("This is your Profile!"));
      case "services":
        return Services();
      default:
        return Center(child: Text("Unknown Section"));
    }
  }
}
