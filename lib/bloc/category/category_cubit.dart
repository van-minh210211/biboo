import 'package:biboo/api/api_booklist.dart';
import 'package:biboo/bloc/book/book_cubit.dart';
import 'package:biboo/model/category_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this._bookService) : super(CategoryInitial());
  final BookService _bookService;

  Future getListCategoty () async{
    try{
      final response = await _bookService.getCategory();
      emit(CategorySuccess(response));
    }catch (e){
      emit(CategorySuccess([]));

    }
  }
}
