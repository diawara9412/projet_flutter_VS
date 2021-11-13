// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Panneaux Type"),
      ),
      body: Container(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  showDialogFun(
                    context,
                    "nom",
                    "assets/images/téléchargement5.png",
                    "audio",
                  );
                },
                child: Center(
                  child: Image.asset(
                    "assets/images/téléchargement5.png",
                    width: 200,
                  ),
                ),
              ),
              Center(
                child: Text("Text"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.volume_up,
                      size: 50,
                    ),
                    onPressed: () {},
                  ),
                  //  IconB(
                  //   Icons.volume_up,
                  //   size: 50,
                  // ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    showDialogFunc(
                        context,
                        "nom",
                        "assets/images/téléchargement1.png",
                        "audio",
                        "description");
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/téléchargement1.png",
                        width: 140,
                      ),
                    ],
                  ),
                );
              }),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
              child: Container(
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              style: TextStyle(fontFamily: 'Code128', fontSize: 20.0),
            ),
          )),
        )
      ])),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("data");
  }
}

showDialogFunc(context, nom, photo, audio, description) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[300],
            ),
            padding: EdgeInsets.all(15),
            height: 320,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  nom,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    photo,
                    width: 80,
                    height: 80,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                IconButton(
                  icon: Icon(Icons.volume_up),
                  onPressed: () {},
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      description,
                      maxLines: 3,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

showDialogFun(context, title, img, desc) {
  return showDialog(
    context: context,
    builder: (context) {
      return ListView(children: <Widget>[
        Card(
          child: Row(
            children: <Widget>[
              Container(
                child: Image.asset(
                  img,
                  width: 100,
                  height: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Text(
                        desc,
                        maxLines: 3,
                        style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ]);
    },
  );
}
