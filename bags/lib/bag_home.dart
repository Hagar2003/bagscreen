import 'package:bags/pbags.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OurBags extends StatelessWidget {
  OurBags({super.key});
  final List<String> names = <String>[
    'Hand bag',
    'jewellery',
    'footwear',
    'Dresses'
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
                  const Icon(Icons.arrow_back, color: Colors.grey, size: 30),
              actions: const [
                Icon(Icons.search, color: Colors.grey, size: 30),
                SizedBox(width: 25),
                Icon(Icons.add_shopping_cart, color: Colors.grey, size: 30),
                SizedBox(width: 15)
              ],
            ),
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const Text(
                '  Women                                                  ',
                style: TextStyle(
                    color: Color.fromARGB(255, 86, 80, 80),
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                  height: 40,
                  child: ListView.separated(
                    itemCount: names.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 60,
                        width: 100,
                        child: Text(
                          names[index],
                          style: const TextStyle(
                              color: Color.fromARGB(255, 103, 99, 99),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 7,
                    ),
                  )),
            products(),
                        ]
                        )));
                      }
            
  }

