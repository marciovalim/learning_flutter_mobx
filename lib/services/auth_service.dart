class AuthService {
  const AuthService.singleton();

  Future<bool> login(String name, String password) async {
    await Future.delayed(Duration(seconds: 1));
    return name == "Marcio" && password == "12345678";
  }
}
