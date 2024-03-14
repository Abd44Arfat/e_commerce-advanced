import 'package:ecommerce_advanced/core/extensions/context_extension.dart';
import 'package:ecommerce_advanced/core/routes/app_routes.dart';
import 'package:flutter/material.dart';

class Test1 extends StatelessWidget {
  const Test1({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 104, 197, 10),
        title: Text('test 1'),
        
      ),
      body: Column(

        
        children: [
          Image.asset(context.assets.testimage??""),
          Center(child: 
          TextButton(onPressed: (){
          context.pushName(AppRoutes.test2); 
          
          },child: Text('Go to texst 2'))
          ),
        ],
      ),
    );
  }
}