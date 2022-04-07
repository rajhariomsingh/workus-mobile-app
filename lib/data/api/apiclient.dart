import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:workfromus/utils/appconstants.dart';

import '../../utils/appconstants.dart';
import '../../utils/appconstants.dart';

class apiclient extends GetConnect implements GetxService{
  late String token;
  final String appBaseUrl;
  late Map<String, String > _mainHeaders;

  apiclient({required this.appBaseUrl}){
    baseUrl=appBaseUrl;
    timeout = Duration(seconds: 30);
    token="";
    _mainHeaders={
      'Content-type':'application/json;charset=UTF-8',
      'Authorization': 'bearer $token',
    };

  }
  Future<Response> getData(String uri,) async{
    try{
      Response response = await get(uri);
      return response;
    }catch(e){
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}