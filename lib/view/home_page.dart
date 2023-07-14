import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpersonal/models/book.dart';
import 'package:flutterpersonal/view/detail_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemTeal,
        title: Text('Hi Suyasha!'),
        foregroundColor: Colors.black,
        actions: [
          Icon(CupertinoIcons.search),
          const SizedBox(width: 20),
          Icon(CupertinoIcons.bookmark),
          const SizedBox(width: 20),
          const Icon(CupertinoIcons.bell_fill),
          const SizedBox(width: 10),
        ],
        elevation: 10,
      ),

      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.blueGrey,
            child: Image.network(
              'https://media.istockphoto.com/id/1411029939/photo/top-view-on-colorful-stacked-books-education-and-learning-concept-background.webp?b=1&s=170667a&w=0&k=20&c=uw6avsgigpECDP-THvvqSLAs2M93HRvIOYCNhnOe70s=',
              //'assets/bookshelf.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 250,
            width: double.infinity,
            color: Color(0xFF1b7de5),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return InkWell(
                  onTap: (){
                    Get.to(()=> DetailPage(book), transition: Transition.zoom);
                  },
                  child: Container(
                    color: Color(0xFFDDF4FF),
                    margin: EdgeInsets.only(right: 5),
                    width: 370,
                    height: 250,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Card(
                            child: Container(
                              height: 200,
                              width: 370,
                              color: Color(0xFF7eaad6),
                              child: Row(
                                children: [
                                  Expanded(child: Container()),
                                  SizedBox(width: 50),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 7),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            book.label,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            book.detail,
                                            style: TextStyle(color: Colors.black, fontFamily: 'RaleWay'),
                                            maxLines: 6,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(book.rating),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                book.genre,
                                                style: TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              book.image,
                              height: 250,
                              width: 125,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Text(
                'You may also like: ',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
            color: Color(0xFF1b7de5),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: books1.length,
              itemBuilder: (context, index) {
                final book = books1[index];
                return InkWell(
                  onTap: (){
                    Get.to(()=> DetailPage(book), transition: Transition.zoom);
                  },
                  child: Container(
                    color: Color(0xFFDDF4FF),
                    margin: EdgeInsets.only(right: 5),
                    width: 370,
                    height: 300,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: Card(
                            child: Container(
                              height: 200,
                              width: 370,
                              color: Color(0xFF7eaad6),
                              child: Row(
                                children: [
                                  Expanded(child: Container()),
                                  SizedBox(width: 50),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 7),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            book.label,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            book.detail,
                                            style: TextStyle(color: Colors.black, fontFamily: 'RaleWay'),
                                            maxLines: 6,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(book.rating),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                book.genre,
                                                style: TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              book.image,
                              height: 200,
                              width: 125,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}