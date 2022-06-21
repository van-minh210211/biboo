part of 'book_cubit.dart';

abstract class BookState extends Equatable {
  const BookState();

  @override
  List<Object> get props => [];
}

class BookInitial extends BookState {}
class BookLoading extends BookState{}
class BookSuccess extends BookState {
  const BookSuccess (
    this.listBook,
  );
  final List<BookModel> listBook;

  BookSuccess copyWith ({
    List <BookModel> ? listBook ,
  }){
    return BookSuccess(listBook?? this.listBook);
  }

  @override
  List<Object>  get porps => [
    listBook
  ];
}
class BookError extends BookState {}
