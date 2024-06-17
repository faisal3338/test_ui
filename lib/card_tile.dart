import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  const CardTile({
    super.key,
    this.lead = Icons.heart_broken_outlined,
    required this.title,
  });

  final IconData lead;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      elevation: 12,
      child: ListTile(
        // tileColor: Colors.white,
        leading: Icon(lead),
        trailing: const Icon(Icons.arrow_forward_ios),
        title: Text(title),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // shape: CircleBorder(side: BorderSide(width: 10)),
      ),
    );
  }
}
