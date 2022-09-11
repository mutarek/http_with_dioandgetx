import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http_with_dioandgetx/controllers/popular_movie_controller.dart';

class MyHomePage extends StatelessWidget {
  final controller = Get.put(PopularMovController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio Example'),
      ),
      body: Obx(()=> controller.isLoading.value?Center(
        child: CircularProgressIndicator(),
      ):ListView.builder(
        itemCount: controller.model.length,
        itemBuilder: (_,index){
          return ListTile(
            title: Text(controller.model[index].title.toString()),
          );
        },
      )),
    );
  }
}
