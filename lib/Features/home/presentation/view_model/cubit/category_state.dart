part of 'category_cubit.dart';

@immutable
sealed class CategoryState {}

final class CategoryInitial extends CategoryState {}
final class CategoryLoading extends CategoryState {}
final class CategorySuccess extends CategoryState {
 final List<Category>category;

  CategorySuccess(this.category);

}
final class CategoryFailure extends CategoryState {

  final String errMessage;

  CategoryFailure(this.errMessage);

  
}
