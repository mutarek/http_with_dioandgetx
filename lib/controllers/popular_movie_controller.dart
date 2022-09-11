import 'package:get/get.dart';
import 'package:http_with_dioandgetx/models/popular_movie_model.dart';
import 'package:http_with_dioandgetx/services/api_services.dart';

class PopularMovController extends GetxController{
  var model = <PopularMovie>[].obs;
  var isLoading = true.obs;


  @override
  void onInit() {
    getAllPopularMovies();
    super.onInit();
  }

  void getAllPopularMovies() async{
    var data = await ApiService().getPopularMovies();
    if(data.length>0){
      isLoading(false);
      model.clear();
      model.addAll(data);
    }
  }
}