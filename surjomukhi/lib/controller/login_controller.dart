import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:surjomukhi/model/login.dart';
import 'package:http/http.dart' as http;
import 'package:surjomukhi/utils/globalFunctions.dart';

import '../config/config.dart';
// class LoginController{

// //// to get user & Pass ...
// Future<List<LoginData>> getUserCredentials(String userId,String userPass)async{
//   List<LoginData> userCredentialObjList = [];
//   Map data = {
//     "grecaptcha":"",
//     "password":userPass,
//      "username":userId,
//   };
//   http.Response res = await http.post(Uri.parse(baseUrl),body:data,encoding: Encoding.getByName("utf-8")); 
//   print(res.body);
//   if(res.statusCode == 200){
//     Map userCredentialResponseMap = jsonDecode(res.body);

//       LoginData loginDataObj = LoginData(
//         userName:userCredentialResponseMap["name"] , 
//         userId :userCredentialResponseMap["userName"],
//         accessToken: userCredentialResponseMap["accessToken"]);
//         userCredentialObjList.add(loginDataObj);
//       return userCredentialObjList;
//   }
//  throw Exception("Error to load data in Login Controller");
//   }
// }

class LoginController {
  static GlobalFunction globals = GlobalFunction();
  //// Login Url 
  @override
  Future<List<LoginData>> getSemesterResult(String studentID, String studentPass) async {
    List<LoginData> loginInfoObjList = []; 
    Map data = {
      "grecaptcha": "",
      "password": studentPass,
      "username": studentID,
    };
    http.Response response = await http.post(
      Uri.parse("$baseUrl$studentLoginUrl"),
      body: jsonEncode(data),
      headers: {"Content-Type": "application/json", "Accept": "*/*"},
    );
    if (response.statusCode == 200) {
       var handle = await SharedPreferences.getInstance();
      //  handle.setString(key, value)
      Map student_Login_info = jsonDecode(response.body);
      List loginInfoList = [];
      loginInfoList.add(student_Login_info["accessToken"]);
      loginInfoList.add(student_Login_info["userName"]);
      loginInfoList.add(student_Login_info["name"]);

      for(int i=0;i < loginInfoList.length;i++){
        LoginData loginObj = LoginData(accessToken:loginInfoList[0] ,userId:loginInfoList[1] ,userName:loginInfoList[2]);
        loginInfoObjList.add(loginObj);
      }

      
      return loginInfoObjList;
    }
    return [];
  }

  /// Check Login Credentials
  Future<bool> isLogedIn(String reqPrefKey)async{
  String res = await globals.getPreferenceKey(reqPrefKey);
  return res.isNotEmpty ? true : false;
  }


}