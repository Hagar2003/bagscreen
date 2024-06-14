import 'package:bags/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Bagcard extends StatelessWidget {
  const Bagcard({super.key, required this.b});
  final Bag b;
  @override
  Widget build(BuildContext context) {
    return Container(// height: 100,
      width:MediaQuery.of(context).size.width/2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        
      ),
      child:Column(mainAxisAlignment:MainAxisAlignment.start,
  
          children: [
            Container(height:150,width:160,decoration: BoxDecoration(color: b.color,
            borderRadius: BorderRadius.circular(8.0)),
            child:Image.asset(b.img,fit:BoxFit.cover)),
          Padding(padding: EdgeInsets.only(right:80),child: Text(b.name,style:TextStyle(color: Colors.grey))),
            Padding(padding: EdgeInsets.only(right:100),child: Text(b.price))
          ],
        ),
    )
    ;
  }
}
