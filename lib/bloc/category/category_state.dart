part of 'category_cubit.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

class CategoryInitial extends CategoryState {}

class CategoryLoading extends CategoryState {}

class CategorySuccess extends CategoryState {
  const CategorySuccess(
    this.listCategory,
  );
  final List<CategoryModel> listCategory;
  CategorySuccess copyWith({
    List<CategoryModel>? listCategory,
  }) {
    return CategorySuccess(listCategory ?? this.listCategory);
  }

  @override
  List<Object> get props => [listCategory];
}

class CategoryError extends CategoryState {}
