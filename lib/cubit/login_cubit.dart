import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login(String username, String password) async {
    emit(LoginLoading());

    final url = Uri.parse('https://dummyjson.com/auth/login');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({'username': username, 'password': password});

    try {
      final response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        emit(LoginSuccess(data));
        print("✅ Login successful, token: ${data['token']}");
      } else {
        final data = jsonDecode(response.body);
        emit(LoginError(data['message'] ?? 'حدث خطأ أثناء تسجيل الدخول'));
      }
    } catch (e) {
      emit(LoginError('حدث خطأ في الاتصال بالإنترنت'));
    }
  }
}
