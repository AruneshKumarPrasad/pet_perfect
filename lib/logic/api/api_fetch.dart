import 'package:dio/dio.dart';
import 'package:pet_perfect/logic/api/api_links.dart';
import 'package:pet_perfect/models/pet%20api%20model/pet_api_model.dart';

class APIFetch {
  var dio = Dio();
  void getLinkFor() async {
    try {
      var response = await dio.get(APILinks.getLinkForPet);
      PetAPIModel extarctedData = PetAPIModel.fromJson(response.data);
      print(extarctedData.url);
    } catch (e) {
      print(e);
    }
  }
}
