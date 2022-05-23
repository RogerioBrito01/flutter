import 'package:application/app/data/model/auth_model.dart';
import 'package:application/app/data/provider/auth_provider.dart';

class AuthRepository {
  // instanciado authApiClient
  final AuthApiClient apiClient = AuthApiClient();
// metodo de login do provaider e converte para auth para retonar para o controler
  Future<Auth> login(String username, String password) async {
    return Auth.fromJson(await apiClient.login(username, password));
  }
}
