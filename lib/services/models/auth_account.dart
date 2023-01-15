class Account {
  final int? id;
  final String? apiResponse;
  final String firstName;
  final String lastName;
  final String? gender;
  final String phone;
  final String? identity;
  final String? spot;
  final String email;
  final String? password;
  final String? password2;
  final String? apiToken;

  Account(
      {this.id,
      this.apiResponse,
      required this.firstName,
      required this.lastName,
      this.gender,
      required this.phone,
      required this.identity,
      required this.spot,
      required this.email,
      this.password,
      this.password2,
      this.apiToken});

// Mapping fetched data from JSON to string
  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      id: json['id'],
      apiResponse: json['response'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      gender: json['gender'],
      phone: json['telephone'],
      identity: json['Id_number'],
      spot: json['collector_spot'],
      email: json['email'],
      password: json['password'],
      password2: json['password2'],
      apiToken: json['token'],
    );
  }
}

class LoginRequest {
  String? username;
  String? password;

  LoginRequest(
    {this.username,
    this.password}
    );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'username': username!.trim(),
      'password': password!.trim()
    };
    return map;
  }
}

class LoginResponse {
  final String token;
  // final String error;

  LoginResponse(
    {required this.token,
    // required this.error
    }
    );

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      token: json['token'] ?? "",
      // error: json['non_field_errors'] ?? "",
    );
  }
}