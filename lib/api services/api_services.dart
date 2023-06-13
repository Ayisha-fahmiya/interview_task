import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:interview_task/model/lucky_model.dart';

class ApiServives {
  final client = http.Client();

  Future<List<LuckyModel>?> getApi() async {
    var response = await client.get(
      Uri.parse("http://luckyapi.qizo.in/api/mcompanyprofiles"),
    );
    log(response.statusCode.toString());
    if (response.statusCode == 200) {
      return luckyModelFromJson(response.body);
    } else {
      return null;
    }
  }
}
