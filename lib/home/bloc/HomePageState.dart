import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:book01/models.dart';

class HomePageState extends Equatable {
  HomePageState([List tmp = const []]);

  get query => null;
}

class HomePageStateLoading extends HomePageState {
  @override
  String toString() => "HomePageStateLoading";
}

class HomePageStateSuccess extends HomePageState {
  final List<Items> books;
  HomePageStateSuccess({
    @required this.books,
  });

  @override
  String toString() => "HomePageStateSuccess";
}

class HomePageStateError extends HomePageState {
  final String message;

  HomePageStateError({@required this.message});

  @override
  String toString() => "HomePageStateError";
}
