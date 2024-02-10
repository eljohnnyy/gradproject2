
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradproject/Features/home/data/models/category_model.dart';
import 'package:gradproject/Features/home/data/repo/category_repo.dart';


part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this.categoryRepo) : super(CategoryInitial());
  final CategoryRepo categoryRepo;
  Future<void> getAllCategory() async {
    var result = await categoryRepo.fetchCategory();
    result.fold((l) => emit(CategoryFailure(l.errMessage)),
        (r) => emit(CategorySuccess(r)));
  }
}
