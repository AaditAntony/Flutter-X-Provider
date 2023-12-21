import 'package:flutter/material.dart';

class Grocerytile extends StatelessWidget {
  final String name;
  final String price;
  final String imagePath;
  final color;
  void Function()? onPressed;
  Grocerytile(
      {super.key,
      required this.name,
      required this.price,
      required this.imagePath,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: GestureDetector(
          onTap: onPressed,
          child: Container(
            color: color[100],
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    imagePath,
                    height: 120,
                  ),
                  MaterialButton(
                    onPressed: onPressed,
                    color: color[300],
                    child: Text(
                      price,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
