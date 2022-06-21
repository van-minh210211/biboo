import 'package:biboo/Shimmer/Shimmerbook.dart';
import 'package:biboo/UI/Home/all.dart';
import 'package:biboo/Widget/CustomBook.dart';
import 'package:biboo/api/api_booklist.dart';
import 'package:biboo/bloc/book/book_cubit.dart';

import 'package:biboo/model/book_list_model.dart';
import 'package:biboo/Shimmer/shimmer.dart';
import 'package:biboo/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Listbook extends StatelessWidget {
  const Listbook({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: BlocBuilder<BookCubit, BookState>(
        builder: (context, state) {
          if (state is BookSuccess) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                // padding: EdgeInsets.only(left: 4),ko
                shrinkWrap: true,
                itemCount: state.listBook.length,
                itemBuilder: (context, index) {
                  final iteam = state.listBook[index];
                  return Custombook(
                    avatar: iteam.avatar,
                    name: iteam.name,
                    authors: iteam.authors.first.editor,
                  );
                });
          }
          return  ShimmerBook();
        },
      )
    );
  }
}
