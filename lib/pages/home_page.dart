import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../controller/home_controller.dart';
import '../views/item_article.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  final homeController = Get.find<HomeController>();

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    homeController.infoBitcoin();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Bitcoin',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GetBuilder<HomeController>(
        builder: (_){
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

}