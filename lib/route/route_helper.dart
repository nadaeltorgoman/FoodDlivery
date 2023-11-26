import 'package:food_delivery_app/pages/cart/cart_page.dart';
import 'package:food_delivery_app/pages/food/populer_food_detail.dart';
import 'package:food_delivery_app/pages/food/recommended_food_detail.dart';
import 'package:food_delivery_app/pages/home/home_page.dart';
import 'package:food_delivery_app/pages/splash/splash_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String splashPage = "/splash-page";
  static const String initial = "/";
  static const String popularFood = "/popular-food";
  static const String recommendedFood = "/recommended-food";
  static const String cartPage = "/cart-page";

  static String getSplashPage() => splashPage;
  static String getInitial() => initial;
  static String getPopularFood(int pageID, String page) =>
      '$popularFood?pageID=$pageID&page=$page';
  static String getRecommendedFood(int pageID, String page) =>
      '$recommendedFood?pageID=$pageID&page=$page';
  static String getCartPage() => cartPage;

  static List<GetPage> route = [

    GetPage(name: splashPage, page: () => const SplashScreen()),
    GetPage(name: initial, page: () => const HomePage()),
    GetPage(
      name: popularFood,
      page: () {
        var pageID = Get.parameters['pageID'];
        var page = Get.parameters['page'];
        return PopularFoodDetail(pageID: int.parse(pageID!), page: page!);
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: recommendedFood,
      page: () {
        var pageID = Get.parameters['pageID'];
        var page = Get.parameters['page'];
        return RecommendedFoodDetail(pageID: int.parse(pageID!), page: page!);
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
        name: cartPage,
        page: () {
          return const CartPage();
        },
        transition: Transition.fadeIn),
  ];
}
