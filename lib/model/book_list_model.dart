import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'book_list_model.g.dart';

@JsonSerializable()
class BookModel extends Equatable {
  const BookModel({
    required this.avatar,
    required this.id,
    required this.name,
    required this.categoryId,
    required this.authors,
  });
  final String avatar;
  final int id;
  final String name;
  final int categoryId;
  final List<Author> authors;

  @override
  List<Object> get props => [avatar, id, name, categoryId, authors];

  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);
  Map<String, dynamic> toJson() => _$BookModelToJson(this);
}

@JsonSerializable()
class Author extends Equatable {
  Author({
    required this.editor,
    required this.id,
    required this.bookId,
  });
  final String editor;
  final int id;
  final int bookId;

  @override
  List<Object> get props => [editor, id, bookId];
  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}
