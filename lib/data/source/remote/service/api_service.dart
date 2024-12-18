import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:texnomart/data/model/model.dart';
import 'package:texnomart/data/source/remote/response/category_menu/catalog_menu.dart';
import 'package:texnomart/data/source/remote/response/category_response/category_response.dart';
import 'package:texnomart/data/source/remote/response/childs_response/childs_respose.dart';
import 'package:texnomart/data/source/remote/response/detail_responce/detail_responce.dart';
import 'package:texnomart/data/source/remote/response/products_all_category/product_all_category.dart';
import 'package:texnomart/data/source/remote/response/sliders_response/sliders_response.dart';
import 'package:texnomart/data/source/remote/response/special_product_response/special_product_response.dart';


part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("web/v1/content/sliders")
  Future<SlidersResponse> getSliders();

  @GET("web/v1/home/special-categories")
  Future<CategoryResponse> getCategory();

  @GET("web/v1/home/special-products?type=hit_products")
  Future<SpecialProductResponse> getProductHits();

  @GET("web/v1/home/special-products?type=new_products")
  Future<SpecialProductResponse> getProductNews();

  @GET("mobile/v1/search/filters")
  Future<ProductAllCategory> getCategoryProductSimple({
    @Query("category_all") required String category,
    @Query("sort") String? sort,
    @Query("page") String? number,
  });

  @GET("mobile/v1/product/detail")
  Future<DetailResponse> getDetail({
    @Query("id") required String id,
  });
  
  @GET('web/v1/header/popup-menu-catalog')
  Future<CatalogMenu> getCatalogMenu();

  @GET("web/v1/header/popup-menu-catalog")
  Future<ChildsRespose> getPopMenu();
  
  @GET("web/v1/region/stores-list")
  Future<SerModel> getAllCountry();
}
