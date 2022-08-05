import 'package:flutter/material.dart';
import 'package:news/model/NewsModel.dart';

class NewsCard extends StatelessWidget {
  NewsModel news;

  NewsCard({required this.news});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(news.urlToImage),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '${news.source?.name} - ${news.author}',
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                  color: Colors.purple),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              news.title,
              style: TextStyle(fontSize: 16.0, color: Colors.grey.shade800),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
