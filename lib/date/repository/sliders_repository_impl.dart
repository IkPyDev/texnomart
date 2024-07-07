import 'package:dio/dio.dart';
import 'package:texnomart/date/source/remote/response/category_menu/catalog_menu.dart';
import 'package:texnomart/date/source/remote/response/category_response/category_response.dart';
import 'package:texnomart/date/source/remote/response/detail_responce/detail_responce.dart';
import 'package:texnomart/date/source/remote/response/products_all_category/products_all_category.dart';
import 'package:texnomart/date/source/remote/response/sliders_response/sliders_response.dart';
import 'package:texnomart/date/source/remote/response/special_product_response/special_product_response.dart';
import 'package:texnomart/date/source/remote/service/api_service.dart';

import '../../di/di.dart';
import '../../domain/repository.dart';


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
    throw UnimplementedError();
  }

  @override
  Future<CategoryResponse> getCategory() async {
    try {
      final response = await apiService.getCategory();
      return response;
    } on DioException {
      rethrow;
    }
    throw UnimplementedError();
  }

  @override
  Future<SpecialProductResponse> getProductsHits() async {
    try {
      final response = await apiService.getProductHits();
      return response;
    } on DioException {
      rethrow;
    }
    throw UnimplementedError();
  }

  @override
  Future<SpecialProductResponse> getProductsNews() async {
    try {
      final response = await apiService.getProductNews();
      return response;
    } on DioException {
      rethrow;
    }
    throw UnimplementedError();
  }

  @override
  Future<ProductAllCategory> getAllCategory(
      {required String categoryName, String? sort, String? page}) async {
    try {
      final response = await apiService.getCategoryProductSimple(
          category: categoryName, sort: sort ?? "popular", number: page ?? "1");
      return response;
    } on DioException {
      rethrow;
    }
    throw UnimplementedError();
  }

  @override
  Future<DetailResponse> getDetail({required String id}) async {
    try{
      final respone = await apiService.getDetail(id: id);
      return respone;
    }on DioException{
      rethrow;
    }
    throw UnimplementedError();
  }

  @override
  Future<CatalogMenu> getCatalogMenu() async {
    try{
      final respone = await apiService.getCatalogMenu();
      return respone;
    }on DioException{
      rethrow;
    }
    throw UnimplementedError();
  }
}
