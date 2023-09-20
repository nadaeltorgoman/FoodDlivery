import 'package:food_delivery_app/pages/cart/cart_page.dart';
import 'package:food_delivery_app/pages/food/populer_food_detail.dart';
import 'package:food_delivery_app/pages/food/recommended_food_detail.dart';
import 'package:food_delivery_app/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";
  static const String cartPage = "/cart-page";

  static String getInitial() => '$initial';
  static String getPopularFood(int pageID) => '$popularFood?pageID=$pageID';
  static String getRecommendedFood(int pageID) =>
      '$recommendedFood?pageID=$pageID';
  static String getCartPage() => '$cartPage';

  static List<GetPage> route = [
    GetPage(name: initial, page: () => MainFoodPage()),
    GetPage(
      name: popularFood,
      page: () {
        var pageID = Get.parameters['pageID'];
        return PopularFoodDetail(pageID: int.parse(pageID!));
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: recommendedFood,
      page: () {
        var pageID = Get.parameters['pageID'];
        return RecommendedFoodDetail(pageID: int.parse(pageID!));
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
        name: cartPage,
        page: () {
          return CartPage();
        },
        transition: Transition.fadeIn),
  ];
}
