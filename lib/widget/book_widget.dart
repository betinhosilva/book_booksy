import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  String imgUrl =
      "http://livrariaconcreta.com.br/wp-content/uploads/2016/03/livro-azul_andrew-lang_CAPA_21_09_2017_FINAL_CURVAS-01.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 260,
      margin: EdgeInsets.fromLTRB(24, 20, 24, 40),
      child: Stack(
        children: <Widget>[
          Align(
            child: ClipRRect(
              child: Image.network(imgUrl),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            alignment: Alignment.centerRight,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 220,
              width: 240,
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 20,
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Titulo",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Autor",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
