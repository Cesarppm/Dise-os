import 'package:flutter/material.dart';

class PageTittle extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white,),),
            SizedBox( height: 10),
            Text('Clasify this transaction into a particular category',style: TextStyle(fontSize: 18,color: Colors.white, )),
          ],
        ),
      ),
    );
  }
}