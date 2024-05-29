import 'package:flutter/material.dart';
import '../models/info_model.dart';

Widget itemOfArticle(Article article, int index){
  return Container(
    margin: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
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
