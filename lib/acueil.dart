// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'details.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Panneaux'),
          centerTitle: true,
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.pink],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  )))),
      body: Container(
          color: Color(0xF7D7F8),
          // child: filterEdecole.length > 0
          //     ?
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 1,
                mainAxisSpacing: 2,
                // mainAxisExtent: 200
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Details()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/images/téléchargement5.png",
                              width: 150,
                            ),
                            Text("data")
                          ],
                        ),
                      )
                    ],
                  ),
                );
              })
          // : Center(
          //     child: CircularProgressIndicator(),
          //   ),
          ),
    );
  }
}
