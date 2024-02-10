import 'package:dartz/dartz.dart';
import 'package:gradproject/Features/home/data/models/category_model.dart';
import 'package:gradproject/core/errors/failure.dart';

abstract class CategoryRepo{
Future<Either<Failure, List<Category>>> fetchCategory();

}