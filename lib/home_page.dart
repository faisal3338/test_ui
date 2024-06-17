import 'package:flutter/material.dart';
import 'package:test_ui/card_tile.dart';

import 'custom_feel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text.rich(TextSpan(children: [
          TextSpan(
              text: "Hi, ",
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 124, 226),
                  fontWeight: FontWeight.bold)),
          TextSpan(
            text: "Faisal",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ])),
        actions: [
          IconButton.filledTonal(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //search
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(15)),
              child: const Row(
                children: [Icon(Icons.search), Text("Search")],
              ),
            ),
          ),
          const Text("How do you feel?"),
          const SizedBox(
            height: 15,
          ),

          //Feel
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Feel(emoji: "🤩", nameEmoji: "excited"),
              Feel(emoji: "😄", nameEmoji: "Well"),
              Feel(emoji: "🙂", nameEmoji: "Ok"),
              Feel(emoji: "☹️", nameEmoji: "Bad"),
            ],
          ),

          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35))),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      "System",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CardTile(
                    lead: Icons.face_3,
                    title: "excited",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CardTile(lead: Icons.face_2, title: "Well"),
                  const SizedBox(
                    height: 10,
                  ),
                  const CardTile(
                    lead: Icons.face,
                    title: "Ok",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CardTile(lead: Icons.face_unlock_sharp, title: "Bad"),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(300, 55), elevation: 10),
                      onPressed: null,
                      child: const Text(
                        "Accept",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ))
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
