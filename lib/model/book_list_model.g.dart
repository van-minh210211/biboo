// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookModel _$BookModelFromJson(Map<String, dynamic> json) => BookModel(
      avatar: json['avatar'] as String,
      id: json['id'] as int,
      name: json['name'] as String,
      categoryId: json['categoryId'] as int,
      authors: (json['authors'] as List<dynamic>)
          .map((e) => Author.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BookModelToJson(BookModel instance) => <String, dynamic>{
      'avatar': instance.avatar,
      'id': instance.id,
      'name': instance.name,
      'categoryId': instance.categoryId,
      'authors': instance.authors,
    };

Author _$AuthorFromJson(Map<String, dynamic> json) => Author(
      editor: json['editor'] as String,
      id: json['id'] as int,
      bookId: json['bookId'] as int,
    );

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
      'editor': instance.editor,
      'id': instance.id,
      'bookId': instance.bookId,
    };
