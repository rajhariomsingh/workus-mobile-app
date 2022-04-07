import 'dart:convert';

import 'package:get/get.dart';
import 'package:workfromus/data/repository/populsr_photo_repo.dart';
import 'package:workfromus/models/popularphotoosmodels.dart';


class popularphotoscontroller extends GetxController{
  final popularphotorepo popularphotorepos;
  popularphotoscontroller({required this.popularphotorepos});
  List<dynamic>  _popularphotoslist=[];
  List<dynamic> get popularphotoslist => _popularphotoslist;
//mapping model`
  Future<void> getpopularphotoslist()async{

    Response response = await  popularphotorepos.getpopularphotoList();
   //  print(response.statusCode);
    if(response.statusCode==200){
      print("got product");
      _popularphotoslist=[];
     // Map rawData = jsonDecode(response.body);
      _popularphotoslist.addAll(Product.fromJson(response.body).products);
      //print(_popularphotoslist);
      update();
    }else{

    }
  }
}