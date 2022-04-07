import 'package:get/get.dart';
import 'package:workfromus/data/api/apiclient.dart';
import 'package:workfromus/utils/appconstants.dart';

class popularphotorepo extends GetxService{
  final apiclient apiclients;
  popularphotorepo({required this.apiclients});

  Future<Response> getpopularphotoList() async{
    return await apiclients.getData("/api/v1/products/popular");

  }
}