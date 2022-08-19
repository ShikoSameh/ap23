class UserListModel {
  List<UserModel>? data;

  UserListModel.fromJson(Map<String, dynamic> json) {
    data = [];
    json['data'].forEach((element) {
      data!.add(UserModel.fromJson(element));
    });
  }
}

class UserModel {
  int? id;
  String? email;
  String? firstname;
  String? lastname;
  String? avatar;

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    email = json["email"];
    firstname = json["first_name"];
    lastname = json["last_name"];
    avatar = json["avatar"];
  }
}
