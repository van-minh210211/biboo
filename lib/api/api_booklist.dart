import 'package:biboo/model/book_list_model.dart';
import 'package:biboo/model/category_model.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../base_url.dart';

class BookService {
  const BookService(this._dio);
  final Dio _dio;

  Future<List<BookModel>> getListBook() async {
    try {
      final response = await _dio.get(
          'https://kong.mcbooks.vn/production/kong/books/api/v1/books/public');
      final json = response.data['data'];
      var data =
          List<BookModel>.from(json['rows'].map((x) => BookModel.fromJson(x)));
      return data;
    } on DioError {
      rethrow;
    }
  }

  Future<List<CategoryModel>> getCategory() async {
    try {
      final response = await _dio.get(
          'https://kong.mcbooks.vn/production/kong/categories/api/v1/categories');
      final json = response.data['data'];
      var data = List<CategoryModel>.from(
          json['rows'].map((x) => CategoryModel.fromJson(x)));
      return data;
    } on DioError {
      rethrow;
    }
  }
}
