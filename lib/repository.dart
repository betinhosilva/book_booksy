import 'dart:async';

import 'package:book01/home/bloc/HomePageState.dart';
import 'package:book01/models.dart';

class Repository {
  Future<HomePageState> getBooks(String query) {
    return Future.delayed(Duration(seconds: 2), 
      () => HomePageStateError(
            message: "Falha de Conexão",
          )
    );
    }
  }
}
