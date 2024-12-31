import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fmas_app/components/services/detail.dart';
import 'package:fmas_app/models/course.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    List<CourseModel> courses = [
      CourseModel(
          "Open Box",
          "assets/images/fondos/man.jpg",
          3000,
          "En base a tus preferencias y objetivos, crearemos un plan para maximizar resultados",
          "Contenido",
          ["1", "2", "3", "4"]),
      CourseModel(
          "GAP",
          "assets/images/fondos/woman2.png",
          4000,
          "Modalidad de ejercicio físico que se enfoca en trabajar los glúteos, los abdominales y las piernas",
          "Contenido",
          ["1", "2", "3", "4"]),
      CourseModel(
          "Metabolic",
          "assets/images/fondos/man4.png",
          2000,
          "Es un tipo de ejercicio que aumenta la tasa metabólica, lo que provoca que el cuerpo consuma más calorías durante y después de la sesión",
          "Contenido",
          ["1", "2", "3", "4"]),
      CourseModel(
          "Stretching",
          "assets/images/fondos/man3.png",
          1000,
          "Sirve para ganar una mayor flexibilidad, para rebajar las tensiones musculares y para regresar a un estado de calma tras el ejercicio.",
          "Contenido",
          ["1", "2", "3", "4"])
    ];

    return CarouselSlider(
      items: courses.map((e) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: const Color.fromARGB(110, 238, 234, 234),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Details(
              course: e,
            ),
          ),
        );
      }).toList(),
      options:
          CarouselOptions(height: (MediaQuery.of(context).size.height / 1.5)),
    );
  }
}
