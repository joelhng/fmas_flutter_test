import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fmas_app/main.dart';

class MenuButton extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopupMenuButton<String>(
      tooltip: "Menú",
      icon: Icon(Icons.more_vert), // Ícono del botón
      onSelected: (String value) {
        ref.read(selectedMenuProvider.notifier).state = value;
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<String>(
            value: 'home',
            child: Text('Home'),
          ),
          PopupMenuItem<String>(
            value: 'services',
            child: Text('Servicios'),
          ),
          PopupMenuItem<String>(
            value: 'about',
            child: Text('Nosotros'),
          ),
          PopupMenuItem<String>(
            value: 'contact',
            child: Text('Contacto'),
          ),
        ];
      },
    );
  }
}
