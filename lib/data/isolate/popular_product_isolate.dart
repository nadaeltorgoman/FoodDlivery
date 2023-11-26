import 'dart:isolate';
import 'package:food_delivery_app/data/api/api_client.dart';
import 'package:food_delivery_app/utils/app_constants.dart';

void fetchPopularProductList(SendPort sendPort) async {
  final apiClient = ApiClient(appBaseUrl: AppConstants.BASE_URL);
  try {
    final response = await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
    sendPort.send(response); // Send the response back to the main isolate
  } catch (error) {
    sendPort.send(error); // Send any errors back to the main isolate
  }
}
