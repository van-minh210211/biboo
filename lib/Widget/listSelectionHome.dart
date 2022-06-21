import 'package:biboo/bloc/category/category_cubit.dart';
import 'package:biboo/model/Categoty.dart';
import 'package:biboo/model/category_model.dart';
import 'package:biboo/size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../api/api_booklist.dart';
import '../gen/assets.gen.dart';

class listSelection extends StatefulWidget {
  const listSelection({Key? key}) : super(key: key);

  @override
  State<listSelection> createState() => _listSelectionState();
}

class _listSelectionState extends State<listSelection> {
  late CategoryCubit _categoryCubit;
  final url = BookService(Dio());

  @override
  void initState() {
    super.initState();

    _categoryCubit = CategoryCubit(url);
    _categoryCubit.getListCategoty();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoryCubit>(
      create: (context) => _categoryCubit,
      child: Container(
        height: getProportionateScreenWidth(250),
        child: BlocBuilder<CategoryCubit, CategoryState>(
          builder: (context, state) {
            if (state is CategorySuccess) {
              print(state.listCategory);
              return GridView.builder(
                  itemCount: state.listCategory.length,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.26,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 3,
                      crossAxisCount: 4),
                  // physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final item = state.listCategory[index];
                    return list(
                      icon: item.icon ??'',
                      name: item.name ?? '',
                    );
                  });
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}

class list extends StatefulWidget {
  list({required this.icon, required this.name});
  final String icon, name;

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              Container(
                width: getProportionateScreenWidth(46),
                height: getProportionateScreenWidth(42),
                child: CachedNetworkImage(
                  imageUrl: widget.icon,
                  errorWidget: (context, url, error) =>
                      Assets.icons.icons.svg(),
                ),
                // child: Assets.icons.iconl.svg(),
              ),
              SizedBox(
                width: 19.44,
              ),
              SizedBox(
                width: 110,
                child: Text(
                  widget.name,
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  textScaleFactor: 1.2,
                  style: TextStyle(
                      height: 1.1,
                      // overflow: TextOverflow.ellipsis,
                      fontFamily: "Bold",
                      color: Color(0xff4E4B66),
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.25,
                      fontSize: 13),
                ),
              ),
            ],
          )),
    );
  }
}
