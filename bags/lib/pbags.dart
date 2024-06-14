import 'package:bags/Allproducts.dart';
import 'package:bags/Bagcard.dart';
import 'package:flutter/material.dart';

products() =>
          GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 20),
          shrinkWrap: true,
          itemCount: Allproducts.all.length, 
               itemBuilder: (context, index) {
                  final all= Allproducts.all[index];
                  return Bagcard(b:all);
                },
              )

      
    
  
;
