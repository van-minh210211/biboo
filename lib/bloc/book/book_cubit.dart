import 'package:biboo/UI/Category/Category.dart';
import 'package:biboo/Widget/Listbook.dart';
import 'package:biboo/api/api_booklist.dart';
import 'package:biboo/model/book_list_model.dart';
import 'package:biboo/model/category_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'book_state.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit(this._bookService) : super(BookInitial());
  final BookService _bookService;

  Future getListBooks() async {
    try {
      final response = await _bookService.getListBook();
      emit(BookSuccess(response));
    } catch (e) {
      emit(BookSuccess([]));
      print(e);
    }
  }
}
