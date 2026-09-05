// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

// LoginModel loginModelFromJson(String str) =>
//     LoginModel.fromJson(json.decode(str));

// String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  Message message;
  String homePage;
  String fullName;

  LoginModel({
    required this.message,
    required this.homePage,
    required this.fullName,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        message: Message.fromJson(json["message"]),
        homePage: json["home_page"],
        fullName: json["full_name"],
      );

  Map<String, dynamic> toJson() => {
        "message": message.toJson(),
        "home_page": homePage,
        "full_name": fullName,
      };
}

class Message {
  int successKey;
  String message;
  String sid;
  String apiKey;
  String apiSecret;
  String username;
  String email;

  Message({
    required this.successKey,
    required this.message,
    required this.sid,
    required this.apiKey,
    required this.apiSecret,
    required this.username,
    required this.email,
  });

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        successKey: json["success_key"],
        message: json["message"],
        sid: json["sid"],
        apiKey: json["api_key"],
        apiSecret: json["api_secret"],
        username: json["username"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "success_key": successKey,
        "message": message,
        "sid": sid,
        "api_key": apiKey,
        "api_secret": apiSecret,
        "username": username,
        "email": email,
      };
}
