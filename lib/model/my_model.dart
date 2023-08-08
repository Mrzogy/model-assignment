class Data {
  int id;
  String todo;
  bool completed;
  int userid;

  Data(
      {required this.id,
      required this.todo,
      required this.completed,
      required this.userid});

  factory Data.fromJson(Map json) {
    return Data(
        id: json["id"],
        todo: json["todo"],
        completed: json["completed"],
        userid: json["userId"]);
  }
}
