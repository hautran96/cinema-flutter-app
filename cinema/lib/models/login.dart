class LoginResponse {
  int? errorCode;
  String? message;
  String? token;

  LoginResponse({
    this.errorCode,
    this.message,
    this.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      errorCode: json['errorCode'],
      message: json['message'],
      token: json['token'],
    );
  }
}

class Login {
  String? email;
  String? password;

  Login({
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "email": email,
      "password": password,
    };

    return map;
  }
}
