import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel extends Equatable {
  CategoryModel({
    this.icon,
    required this.id,
    this.name,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);

  final String? icon;
  final int id;
  final String? name;

  @override
  List<Object?> get props => [icon, id, name];
}
