
class Login {
  bool? status;
  int? code;
  String? message;
  String? token;

  Login({this.status, this.code, this.message, this.token});

  Login.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['code'] = this.code;
    data['message'] = this.message;
    data['token'] = this.token;
    return data;
  }
}

