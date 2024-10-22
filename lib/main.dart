import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "List View",
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("List view"),
      ),
      body: ListView(
        children: <Widget>[
          /* ListTile(leading: Icon(Icons.speaker), // membuat listview dengan llist tile
          title: Text("speaker"),),*/

          new ListTutorial(
            gambar:
                "https://tse3.mm.bing.net/th?id=OIP.B7mk39tERmYkOlqlfhEh1QAAAA&pid=Api&P=0&h=180",
            judul: "HTML",
          ),
          new ListTutorial(
            gambar:
                "https://tse2.mm.bing.net/th?id=OIP.aiII04uB8m611vQPSw7HfgHaHa&pid=Api&P=0&h=180",
            judul: "CSS",
          ),
          new ListTutorial(
            gambar:
                "https://tse4.mm.bing.net/th?id=OIP.S0B1lyDfNEXuJ-f1hPvK0wHaHa&pid=Api&P=0&h=180",
            judul: "JS",
          ),
          new ListTutorial(
            gambar:
                "https://tse3.mm.bing.net/th?id=OIP.bx-3HUm5Y3GzfRiMfRTnNgHaFj&pid=Api&P=0&h=180",
            judul: "Flutter",
          ),
        ],
      ),
    );
  }
}

class ListTutorial extends StatelessWidget {
  ListTutorial({required this.gambar, required this.judul});

  final String gambar;
  final String judul;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Center(
        child: Row( // kalau di buat column maka gambar akan di tengah dan judul akan di bawahnya
          children: <Widget>[
            Image(
              image: NetworkImage(gambar),
              width: 100.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Center(
                  child: Column(
                children: <Widget>[
                  Text(
                    judul,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text("ini adalah deskripsi.....",style: TextStyle(fontSize: 15.0,color: Colors.grey),),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
