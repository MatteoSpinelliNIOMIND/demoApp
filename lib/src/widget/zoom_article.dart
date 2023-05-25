import 'package:flutter/material.dart';

class ZoomArticle extends StatelessWidget {
  ZoomArticle(this.title, this.description, this.returnHome, {super.key});
  void Function(int) returnHome;
  String title;
  String description;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(title),
          Text(description),
          ElevatedButton.icon(
            onPressed: () {
              returnHome(-1);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black45,
            ),
            label: const Text("Back"),
          )
        ],
      ),
    );
  }
}
