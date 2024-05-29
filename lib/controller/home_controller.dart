

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:project_exam/models/info_model.dart';
import 'package:project_exam/services/http_service.dart';

class HomeController extends GetxController{

  List<Article> bitcoin = [];
  String urlWebView = '';


  infoBitcoin() async {

    var response = await Network.GET(Network.API_INFO_LIST, Network.paramsINFO());
    var bitcoinList = Network.parseInfo(response!).articles;

    bitcoin = bitcoinList;
    update();
  }

}