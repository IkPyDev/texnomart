import 'package:dio/dio.dart';
import 'package:texnomart/data/model/model.dart';
import 'package:texnomart/data/source/remote/response/category_menu/catalog_menu.dart';
import 'package:texnomart/data/source/remote/response/category_response/category_response.dart';
import 'package:texnomart/data/source/remote/response/detail_responce/detail_responce.dart';
import 'package:texnomart/data/source/remote/response/products_all_category/product_all_category.dart';
import 'package:texnomart/data/source/remote/response/sliders_response/sliders_response.dart';
import 'package:texnomart/data/source/remote/response/special_product_response/special_product_response.dart';
import 'package:texnomart/data/source/remote/service/api_service.dart';

import '../../di/di.dart';
import '../../domain/repository.dart';
import '../source/remote/response/childs_response/childs_respose.dart';


class RepositoryImpl extends TexnoRepository {
  final apiService = di<ApiService>();

  @override
  Future<SlidersResponse> getSliders() async {
    try {
      final response = await apiService.getSliders();
      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<CategoryResponse> getCategory() async {
    try {
      final response = await apiService.getCategory();
      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<SpecialProductResponse> getProductsHits() async {
    try {
      final response = await apiService.getProductHits();
      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<SpecialProductResponse> getProductsNews() async {
    try {
      final response = await apiService.getProductNews();
      return response;
    } on DioException {
      rethrow;
    }
  }

  @override
  Future<ProductAllCategory> getAllCategory(
      {required String categoryName, String? sort, String? page}) async {
      final response = await apiService.getCategoryProductSimple(
          category: categoryName, sort: sort ?? "popular", number: page ?? "1");
      return response;
  }

  @override
  Future<DetailResponse> getDetail({required String id}) async {
    try{
      final respone = await apiService.getDetail(id: id);
      return respone;
    }on DioException{
      rethrow;
    }
  }

  @override
  Future<CatalogMenu> getCatalogMenu() async {
    try{
      final respone = await apiService.getCatalogMenu();
      return respone;
    }on DioException{
      rethrow;
    }
  }

  @override
  Future<ChildsRespose> getPopMenu() async {
    try{
      final respone = await apiService.getPopMenu();
      return respone;
    }catch (e){
      rethrow;
    }

  }

  @override
  Future<SerModel> getAllCountry() async {

    try{
      final res = await apiService.getAllCountry();
      return res;
    }catch(e){
      rethrow;
    }

  }
}
