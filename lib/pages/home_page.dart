import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/home_controller.dart';
import '../models/info_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Get.find<HomeController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeController.infoBitcoin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'Bitcoin',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GetBuilder<HomeController>(
        builder: (_) {
          return Stack(
            children: [
              ListView.builder(
                itemCount: homeController.bitcoin.length,
                itemBuilder: (context, index) {
                  return itemOfArticle(homeController.bitcoin[index], index);
                },
              ),
            ],
          );
        },
      ),
    );
  }

  Widget itemOfArticle(Article article, int index){
    return Container(
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: Colors.grey[300],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Text(index.toString()),
                      const SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(article.urlToImage!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(article.source.name, style: const TextStyle(fontSize: 20))
                    ],
                  ),
                ),
                Divider(),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Text(article.title!),
                      Divider(),
                      Text(article.description!),
                      Divider(),
                      Text(article.content),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}