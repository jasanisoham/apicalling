import 'dart:convert';
import 'package:api_calling/api_class/modelclass.dart';
import 'package:http/http.dart' as http;



class APIHelper {

  APIHelper._();

  static final APIHelper apiHelper = APIHelper._();

  String API_LINK = "https://randomuser.me/api/";

  Future<Detail?> fetchBioData() async {

    Uri API = Uri.parse(API_LINK);

    http.Response response = await http.get(API);

    if (response.statusCode == 200) {

      Map<String, dynamic> data = jsonDecode(response.body);
      Detail resumeData
      = Detail.fromJson(data);
      return resumeData;

    } else {
      return null;
    }
  }
}

