import "package:flutter/material.dart";
import "package:umn_fellowship_app/models/news.dart";

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key, required this.news});

  final News news;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(news.title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Text("(${news.month} ${news.day}) - ${news.content}"),
        ],
      ),
    );
  }
}
