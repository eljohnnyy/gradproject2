import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:gradproject/Features/home/data/models/category_model.dart';
import 'package:gradproject/Features/home/data/repo/category_repo.dart';
import 'package:gradproject/core/errors/failure.dart';
import 'package:gradproject/core/utls/api_services.dart';

class CategoryRepoImpl implements CategoryRepo{
  final ApiService apiService;

  CategoryRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<Category>>> fetchCategory() async{
 
      try{       
      var data = await apiService.get(
          url:
              'http://nada20-001-site1.ctempurl.com/api/GetAllCategory/GetAllCategory');
      List<Category> category = [];
      for (int i=0;i<data.length;i++) {
              category.add(Category.fromJson(data[i]));
      }
      return right(category);
    
      }
        catch (e) {
         if(e is DioException){
          return left(ServerFailure.fromDioError(e));
         }
         return left(ServerFailure(e.toString()));
        }
  }





}