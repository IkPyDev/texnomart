
import '../date/model/model.dart';
import '../date/source/remote/response/category_menu/catalog_menu.dart';
import '../date/source/remote/response/category_response/category_response.dart';
import '../date/source/remote/response/childs_response/childs_respose.dart';
import '../date/source/remote/response/detail_responce/detail_responce.dart';
import '../date/source/remote/response/special_product_response/special_product_response.dart';

import '../date/source/remote/response/products_all_category/products_all_category.dart';
import '../date/source/remote/response/sliders_response/sliders_response.dart';

abstract class TexnoRepository {
  Future<SlidersResponse> getSliders();
  Future<CategoryResponse> getCategory();
  Future<SpecialProductResponse> getProductsHits();
  Future<SpecialProductResponse> getProductsNews();
  Future<ProductAllCategory> getAllCategory({required String categoryName,String? sort,String? page});
  Future<DetailResponse> getDetail({required String id});
  Future<CatalogMenu> getCatalogMenu();
  Future<ChildsRespose> getPopMenu();
  Future<SerModel> getAllCountry();


}