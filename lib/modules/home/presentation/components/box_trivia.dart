import 'package:flutter/material.dart';

class BoxTrivia extends StatelessWidget {
  const BoxTrivia({super.key, required this.trivia});

  final String trivia;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      padding: EdgeInsets.all(20),
      child: Text(trivia),
    );
  }
}
