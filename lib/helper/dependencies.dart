import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:workfromus/controllers/popularphotoscontroller.dart';
import 'package:workfromus/data/api/apiclient.dart';
import 'package:workfromus/data/repository/populsr_photo_repo.dart';
import 'package:workfromus/utils/appconstants.dart';

Future<void> init()async{
  //api
  Get.lazyPut(()=>apiclient(appBaseUrl:"https://mvs.bslmeiyu.com"));
 //repo
  Get.lazyPut(()=>popularphotorepo(apiclients:Get.find()));
//controllers
  Get.lazyPut(()=>popularphotoscontroller(popularphotorepos:Get.find()));
}