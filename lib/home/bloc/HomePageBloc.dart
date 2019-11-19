import 'package:bloc/bloc.dart';
import 'package:book01/home/bloc/HomePageEvent.dart';
import 'package:book01/home/bloc/HomePageState.dart';
import 'package:book01/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final Repository repository;

  HomePageBloc({@required this.repository});

  @override
  HomePageState get initialState => HomePageStateLoading();

  @override
  Stream<HomePageState> mapEventToState(HomePageState event) async* {
    if (event is HomePageSearchEvent) {
      yield HomePageStateLoading();

      var query = event.query;
      var booksResult = await repository.getBooks(query);

      yield booksResult;
    }
  }
}
