// ententidade de usuário  com os atibutos e a converção de dados
class User {
  late int id;
  late String username;
  late bool activated;
//controtor
  User({
    required this.id,
    required this.username,
    required this.activated,
  });
//json em um mapa
  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    activated = json['activated'];
  }
  //map em json
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['username'] = username;
    data['activated'] = activated;
    return data;
  }
}
