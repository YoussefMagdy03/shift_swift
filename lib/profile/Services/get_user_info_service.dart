import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shiftswift/constant.dart';
import 'package:shiftswift/profile/Models/user_info_model.dart';

class GetUserInfoService {
  Future<UserInfoModel> getUserInfo() async {
    try {
      String tokenMember =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6Ijk0ZDBmMDI0LWM3YmUtNGEwZi05OGM0LTI5NjI2ODU3NjhkMSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWUiOiJtbW0iLCJlbWFpbCI6InRAZ21haWwuY29tIiwianRpIjoiZWVlMjliYTgtODc0OS00YzljLWJmYjQtMTJlOTNkNmI5Zjc1IiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiTWVtYmVyIiwiZXhwIjoxNzQ1MjAxOTY5LCJpc3MiOiJTaGlmdFN3aWZ0LkNvbSIsImF1ZCI6IlNoaWZ0U3dpZnQifQ.46fCN28couqmFbbVeJ8chfpeF_W2TBo_b9xdEehN8XE';
      String tokenCompany =
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjQyZDUwNmQxLTU4NjktNGU3Zi05ZDljLWI2YzAzNDM1NjJmZSIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWUiOiJjY2MiLCJlbWFpbCI6ImNAZ21haWwuY29tIiwianRpIjoiMmMyODEyNjEtMWY4My00YTVlLWE5NjAtY2Y0MzQ2M2M4Mjg3IiwiaHR0cDovL3NjaGVtYXMubWljcm9zb2Z0LmNvbS93cy8yMDA4LzA2L2lkZW50aXR5L2NsYWltcy9yb2xlIjoiQ29tcGFueSIsImV4cCI6MTc0NTE2NDE4NywiaXNzIjoiU2hpZnRTd2lmdC5Db20iLCJhdWQiOiJTaGlmdFN3aWZ0In0.IBQ52dvvk3Yc7UDBYm6nH2flGnfspWhh6XyumoRT2s8';
      Map<String, String> headers = {'Authorization': 'Bearer $tokenCompany'};

      http.Response response = await http.get(
        Uri.parse('$accountBaseUrl/GetCurrentUserInformation'),
        headers: headers,
      );
      print('Response Status Code: ${response.statusCode}');
      print('respone=>:${response.body}');

      return UserInfoModel.fromJson(jsonDecode(response.body));
    } catch (e) {
      print('oops there wan an error try later');
      throw Exception('oops there wan an error try later');
    }
  }
}
