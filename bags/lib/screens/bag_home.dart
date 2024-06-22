import 'package:bags/widgets/categories.dart';
import 'package:bags/widgets/pbags.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OurBags extends StatelessWidget {
  OurBags({super.key});
  final List<String> names = <String>[
    '   Hand bag',
    'jewellery',
    'footwear',
    'Dresses  '
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(
                color: Colors.white,
                size: 30,
              ),
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading:
                   IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back, color: Colors.grey,size:30)),
              actions: [
              IconButton(onPressed: (){}, icon:Icon(Icons.search, color: Colors.grey,size:30)),
                SizedBox(width: 25),
              IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart_checkout, color: Colors.grey,size:30)),
                SizedBox(width: 15)
              ],
            ),
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const Text(
                '  Women                                                  ',
                style: TextStyle(
                    color: Color.fromARGB(255, 86, 80, 80),
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
              
             Categories(),
             SizedBox(height:10),
      productts(),
                        
                        ])));
                      }
            
  }

