import 'dart:math';

import 'package:asyn_await/page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {

  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
      title: const Text("Navigation"),
      centerTitle: true,
      backgroundColor: Colors.blueGrey,
      foregroundColor: Colors.deepPurple,
    ),

    body: Center(
      child: Column(
        children: [
          const SizedBox(height: 30,),
          Text("P A G E 2\nNum = $args"),
          const SizedBox(height: 60,),
          btnPage3(context),
          btnBack(context),
        ],
      ),
    ),
    );
  }

  Widget btnPage3(BuildContext ctx) => TextButton(
    onPressed: () async{
      var value = await Navigator.pushNamed(
        ctx,
        '/page3',
        arguments: {'num':1000000, 'text':'One million', 'boolean': true}
        );
      myAlert(ctx, "ข้อมูลที่ส่งกลับมา คือ $value");
    }, 
    child: const Text("Go to page3"));
  
  Widget btnBack(BuildContext ctx) => TextButton(
    onPressed: () => Navigator.pop(ctx,Random().nextInt(100)), 
    child: const Text("<<<< Back"));
  
  void myAlert(BuildContext ctx, String msg){
    showDialog(
      context: ctx,
      builder: (ctx) => AlertDialog(
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(), 
            child: const Text("Ok"))
        ],
        content: Text(msg),
      )
    );
  }
}