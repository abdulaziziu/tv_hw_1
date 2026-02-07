import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              buildCard(
                name: '1',
                cardColor: Colors.white,
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSIJErMu1DYWcv-kLLmOARu0gXwHB9gX37gg&s',
              ),
              buildCard(
                name: '2',
                cardColor: Colors.yellow,
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOLJU-Mn5cThsWuieQop4wyjgDCNBuSjvZWA&s',
              ),
              buildCard(
                name: '3',
                cardColor: Colors.lightBlue,
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVqpNHl2ulTXpctY71xOq5C0t4eMu3ItTatw&s',
              ),
            ],
          ),
        ),
      ),
    );
  }

  static Widget buildCard({
    required String name,
    required Color cardColor,
    required String imageUrl,
  }) {
    return Container(
      width: 200,
      height: 280,
      color: cardColor,

      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.network(
              imageUrl,
              width: 180,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),

          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
      
            ),
          ),

          Container(
            width: 150,
            height: 40,
            color: Colors.grey,
            child: const Align(
              alignment: Alignment.center,
              child: Text("не нажимай!!!"),
            ),
          ),
        ],
      ),
    );
  }
}
