import 'package:flutter/material.dart';

import 'book.dart';


class GridListData extends StatefulWidget {
  const GridListData({super.key});

  @override
  State<GridListData> createState() => _GridListDataState();
}

class _GridListDataState extends State<GridListData> {
  final List books = [
    Book(
      name: 'Flutter is easy',
      author: 'Pattaraporn',
      cover: 'picture/Deep.png',
    ),
    Book(
      author: 'Michel',
      name: 'HTML and CSS',
      cover: 'picture/Machin.png',
    ),
    Book(
      name: 'Data Science',
      author: 'Somchai',
      cover: 'picture/Machin.png',
    ),
    Book(
      name: 'React Native',
      author: 'Peter',
      cover: 'picture/pyrhon.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 20,
          ),
          itemCount: books.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                //Image of the books
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    //color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage(books[index].cover),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //Name of the books
                Text(
                  books[index].name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                //Author of the books
                Text(
                  books[index].author,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}