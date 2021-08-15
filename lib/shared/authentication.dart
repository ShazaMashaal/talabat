import 'package:dio/dio.dart';
import 'package:talabat/shared/shared_prefrences.dart';

class AuthController {

  Future<String> Auth(String email,String password,String operation)async{
    final formData = ({
      'email': email,
      'password': password
    });
    final response = await Dio().post('https://identitytoolkit.googleapis.com/v1/accounts:$operation?key=AIzaSyBjb3KDPB9yEV6Nh8QaC8eeG1Qq9TA1Djo',data: formData
    ,options: Options(
        followRedirects: false,
        validateStatus: (status) {
          return status < 500;
        },
      ),);
    final data = response.data as Map;
    if(data.containsKey('idToken')){
      SharedPref.init();
      SharedPref.setID(data["idToken"]) ;

      return 'ok';
    }
    else
      return data['error'];
  }

}