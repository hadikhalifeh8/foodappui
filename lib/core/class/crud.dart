import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:foodappui/core/class/statusRequest.dart';
import 'package:foodappui/core/function/checkInternet.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(String linkurl, Map data) async {
    // try {
    if (await checkInternet()) {
      var response = await http.post(Uri.parse(linkurl), body: data);
      print(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responsebody =
            jsonDecode(response.body); // jsondecod :json برجع معلومات بهيإت
        print(
            "***************##############************* CRUD: Controler $responsebody ");
        //    print(responsebody) ;

        return Right(responsebody);
      } else {
        return const Left(StatusRequest.serverfailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }
    // } catch (_) {
    //   print("djklkjdkjks");
    //   return const Left(StatusRequest.serverException);
    // }
  }
}
