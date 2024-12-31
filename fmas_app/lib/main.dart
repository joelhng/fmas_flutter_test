import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fmas_app/landing_home.dart';

final selectedMenuProvider = StateProvider<String>((ref) => "Home");

void main() {
  runApp(
    ProviderScope(
      child:
          MaterialApp(debugShowCheckedModeBanner: false, home: LandingHome()),
    ),
  );
}
