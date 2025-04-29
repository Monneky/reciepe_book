import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hello world",
      home: RecipeBook(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class RecipeBook extends StatelessWidget {
  const RecipeBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Reciepe Book', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 125,
        child: Card(
          child: Row(
            children: <Widget>[
              Container(
                height: 125,
                width: 125,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(),
                ),
              ),
              SizedBox(width: 26),
              Column(
                children: <Widget>[
                  Text('Lasagna'),
                  Text('Ivos Llamas'),
                  Container(height: 2, width: 75, color: Colors.orange),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
