import 'package:flutter/material.dart';
import 'package:fmas_app/models/course.dart';

class Details extends StatelessWidget {
  const Details({Key? key, required this.course});
  final CourseModel course;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // Imagen de fondo
      Positioned.fill(
        child: Opacity(
          opacity: 0.2, // Opacidad del 50%
          child: Image.asset(
            course.imageName,
            fit: BoxFit.cover, // Asegura que la imagen cubra todo el fondo
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              course.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Text(
              course.optionTitle,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: course.options.map((e) {
                return Text(e);
              }).toList(),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Acción para el botón 1
                  },
                  child: Text('Price ${course.price}'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Acción para el botón 2
                  },
                  child: const Text('Contactanos!'),
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}
