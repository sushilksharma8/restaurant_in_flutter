import 'package:day5/description.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Restaurant Menu")),
      ),
      backgroundColor: Color.fromARGB(255, 81, 120, 122),
      body: GridView.builder(
        itemCount: data.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 20, crossAxisSpacing: 20, crossAxisCount: 2),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Description(
                        image: data[index]["image"].toString(),
                        name: data[index]["name"].toString(),
                        price: data[index]["price"].toString(),
                        description: data[index]["description"].toString());
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  children: [
                    Image.network(
                      data[index]["image"].toString(),
                      height: 150,
                      width: 150,
                    ),
                    Text(
                      data[index]["name"]!,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Rs.${data[index]["price"]}",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
