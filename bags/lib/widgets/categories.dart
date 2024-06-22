import 'package:bags/widgets/pbags.dart';
import 'package:flutter/material.dart';


// We need satefull widget for our categories

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  // By default our first item will be selected
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () { 
        setState(() {
          selected = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selected == index ? Color.fromARGB(255, 95, 87, 87) : Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 3.0), //top padding 5
              height: 2,
              width: 45,
              color: selected == index ? Color.fromARGB(255, 81, 77, 77) : Colors.transparent,
            ),
             //selected==index ? products():Container(height:200,color:Colors.white,)
          ],
        ),
      ),
    );
  }
}