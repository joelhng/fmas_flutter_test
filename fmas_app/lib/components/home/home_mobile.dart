import 'package:flutter/material.dart';
import 'package:fmas_app/components/main_button.dart';
import 'package:fmas_app/constants.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Imagen de fondo
        Positioned.fill(
          child: Opacity(
            opacity: 0.2, // Opacidad del 50%
            child: Image.asset(
              'assets/images/home_roshi.jpg',
              fit: BoxFit.cover, // Asegura que la imagen cubra todo el fondo
            ),
          ),
        ),
        // Contenido encima de la imagen
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'F+ Training',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w800,
                                  color: kPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        'Centro de',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'alto rendimiento',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Transformando hábitos',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        'mediante el entrenamiento',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          MainButton(
                            title: 'GET STARTED',
                            color: kPrimaryColor,
                            tapEvent: () {},
                          ),
                          SizedBox(width: 10),
                          MainButton(
                            title: 'WATCH VIDEO',
                            color: kSecondaryColor,
                            tapEvent: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
