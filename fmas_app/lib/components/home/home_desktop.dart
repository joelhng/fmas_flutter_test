import 'package:flutter/material.dart';
import 'package:fmas_app/components/main_button.dart';

import '../../../../constants.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'F+ Training',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w800,
                                color: kPrimaryColor)),
                      ])),
                      Text(
                        'Centro de alto rendimiento',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w800),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Transformando hábitos mediante el entrenamiento',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
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
                          )
                        ],
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 4,
                child: Positioned.fill(
                  child: Image.asset('assets/images/home_roshi.jpg',
                      fit: BoxFit.cover),
                ))
          ],
        ));
  }
}
