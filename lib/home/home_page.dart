import 'package:book01/widget/book_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categorias = [
    "Ficção",
    "Drama",
    "Romance",
    "Auto-ajuda",
    "Literatura Cristã",
  ];

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]); // para deixar em fullscreen
    super.initState();
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 42),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 24,
                      right: 24,
                    ),
                    child: Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    "Recomendado",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: categorias.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext c, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 6, right: 6),
                        child: GestureDetector(
                          onTap: () {
                            _selectedIndex = index;
                            setState(() {});
                          },
                          child: Chip(
                            backgroundColor: index == _selectedIndex
                                ? Colors.blue
                                : Colors.grey[200],
                            label: Text(
                              categorias.elementAt(index),
                            ),
                            labelStyle: index == _selectedIndex
                                ? TextStyle(color: Colors.white)
                                : TextStyle(color: Colors.grey[500]),
                            padding: EdgeInsets.only(left: 8, right: 8),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              ListView.builder(
                itemCount: categorias.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return BookWidget();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
