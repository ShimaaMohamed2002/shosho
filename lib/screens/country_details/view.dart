import 'package:flutter/material.dart';

import '../home/model.dart';

class CountryDetailsView extends StatelessWidget {
  final TravelModel model;
  const CountryDetailsView({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
      body: ListView(
        children: [
          Image.network(model.imageUrl,height: 300,fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(model.description,style: TextStyle(fontSize: 20),),
          )
        ],
      ),
    );
  }
}
