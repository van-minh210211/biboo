import 'package:biboo/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class Category1 {
  final String Title;
  final String Imagee;
  const Category1({required this.Title, required this.Imagee});
}

const List<Category1> Data = [
  Category1(
    Title: 'Gia đình và sức khỏe',
    Imagee: 'assets/icons/icon3.svg',
  ),
  Category1(
      Title: 'Kinh doanh và khởi nghiệp', Imagee: 'assets/icons/iconl.svg'),
  Category1(Title: 'Tài chính doanh nghiệp', Imagee: 'assets/icons/icon4.svg'),
  Category1(Title: 'Lịch sự và tiểu thuyết', Imagee: 'assets/icons/icon5.svg'),
  Category1(Title: 'Phát triển bản thân ', Imagee: 'assets/icons/icon2.svg'),
  Category1(
    Title: 'Quản lý tài chính cá nhân',
    Imagee: 'assets/icons/icon6.svg',
  ),
  Category1(
    Title: 'Quản trị nhân sự',
    Imagee: 'assets/icons/icon7-fill.svg',
  ),
];
