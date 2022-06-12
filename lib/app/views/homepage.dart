import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/homecontroller.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (builder){
          return Scaffold(
            appBar: AppBar(
              title: Text('Second Page'),
            ),
            body: Center(
              child: Text('Hello New App'),
            ),
          );
        });
  }
}
