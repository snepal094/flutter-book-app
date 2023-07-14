import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterpersonal/models/book.dart';


class DetailPage extends StatelessWidget {
  final Book book;
  DetailPage(this.book);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Image.network(book.image, height: 300, width: double.infinity, fit: BoxFit.cover,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(book.label,
                        style: TextStyle(
                  fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),

                      ),
                      Column(
                        children: [
                          Text(book.rating),
                          Text(book.genre,
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text(book.detail,
                  style: TextStyle(color: Colors.black, fontFamily: 'RaleWay')
                  ),
                  SizedBox(height: 70,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              backgroundColor: Color(0xFF007084),
                              minimumSize: Size(150, 50)
                          ),
                          onPressed: (){}, child: Text('Read Book')),
                      SizedBox(width: 30,),
                      OutlinedButton(

                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              minimumSize: Size(150, 50)
                          ),
                          onPressed: (){}, child: Text('More Info')),
                    ],
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}