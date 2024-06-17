import 'package:flutter/material.dart';

class Feel extends StatelessWidget {
  const Feel({
    super.key,
    required this.emoji,
    required this.nameEmoji,
  });
  final String emoji;
  final String nameEmoji;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.blue[100], borderRadius: BorderRadius.circular(15)),
          child: Center(
              child: Text(
            emoji,
            style: TextStyle(fontSize: 20),
          )),
        ),
        Text(nameEmoji)
      ],
    );
  }
}
