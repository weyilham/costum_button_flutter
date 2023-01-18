import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Costum Button'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RaisedButton(
                color: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text('Tombol Baru'),
                onPressed: () {},
              ),
              Material(
                borderRadius: BorderRadius.circular(30),
                elevation: 3,
                shadowColor: Colors.amber,
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.lightGreen])),
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                    child: InkWell(
                      splashColor: Colors.green,
                      borderRadius: BorderRadius.circular(30),
                      child: Center(
                          child: Text(
                        "Tombol Costum",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      )),
                      onTap: () {},
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
