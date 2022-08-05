import 'package:flutter/material.dart';
import 'package:news/api/NewsService.dart';
import 'package:news/model/NewsModel.dart';
import 'package:news/widgets/NewsCard.dart';

class NewsList extends StatefulWidget {
  const NewsList({Key? key}) : super(key: key);

  @override
  State<NewsList> createState() => _NewsListState();
}

class _NewsListState extends State<NewsList> {
  List<NewsModel> newsList = [];

  void getData() async {
    NewsService newsService = NewsService();
    await newsService.getNews();
    setState(() {
      newsList = newsService.newsList;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return NewsCard(news: newsList[index]);
        },
      ),
    );
  }
}
