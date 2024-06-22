import 'package:bags/models/allProducts.dart';
import 'package:bags/widgets/color_details.dart';
import 'package:bags/widgets/counter_details.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;
  
  @override
  Widget build(BuildContext context) {  final Size all = MediaQuery.of(context).size;
    return Scaffold(
backgroundColor: product.color,
appBar: AppBar(backgroundColor: product.color,
elevation: 0,
leading: IconButton(onPressed: ()=>Navigator.pop(context), icon:Icon(Icons.arrow_back, color: Color.fromARGB(255, 255, 253, 253),size:30)),
actions: [
              IconButton(onPressed: (){}, icon:Icon(Icons.search, color: Color.fromARGB(255, 255, 245, 245),size:30)),
                SizedBox(width: 25),
              IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart_checkout, color: const Color.fromARGB(255, 255, 250, 250),size:30)),
                SizedBox(width: 15)
              ],),

body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height:all.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: all.height * 0.3),
                    padding: EdgeInsets.only(
                      top: all.height* 0.12,
                      left: 10.0,
                      right: 10.0,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[

                        Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"),
              Row(
                children: <Widget>[
                  Colorr(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  Colorr(
                    color: Color(0xFFF8C078),
                    isSelected: false,
                  ),
                  Colorr(color: Color(0xFFA29B9B), isSelected: false),
                  SizedBox(width:50),
                  Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: const Color.fromARGB(255, 80, 78, 78)),
              children: [
                TextSpan(text: "Size\n"),
                TextSpan(
                  text: "${product.size} cm",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23))]))),
                      ],
                    ),
                    Padding(
      padding: const EdgeInsets.symmetric(vertical:20.0),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5,color: Color.fromARGB(255, 86, 84, 84)),
      ),),Row(children: [
       Counter(),
      SizedBox(width:210),
       Container(
          padding: EdgeInsets.only(right:2),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color:Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
          child:Icon(Icons.favorite,color: Colors.white,size:22))]),
           Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right:20.0),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              ),
            ),
            child: IconButton(
              icon: Icon(Icons.shopping_cart_checkout),
              
              onPressed: () {},)
            ),
            
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                backgroundColor: product.color,
              ),
              child: Text(
                "Buy  Now".toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          
            
      ),
          
          
          
          
          //.......
          ])
                        )])
                    )]  ),])),

                  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,style: 
            TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(height: 15.0),
             Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\$ ${product.price}",
                      style: 
                      TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold))])),
            
            
                SizedBox(width: 20.0),
              Expanded(
                child:
                   Image.asset(
                    product.image,fit: BoxFit.fill,
                    ))])  
                ]
              )
            )])
          
        
)])));
  }
}
