import "package:flutter/material.dart";

import "data.dart";

class Description extends StatelessWidget {
  String image;
  String name;
  String price;
  String description;
  Description({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                image,
                height: 200,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Rs.$price",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                description,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 200, 218, 103),
                ),
                child: Center(
                  child: const Text(
                    "Order Now",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 68, 67, 116)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
