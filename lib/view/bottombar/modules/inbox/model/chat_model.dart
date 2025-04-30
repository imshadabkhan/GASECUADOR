class Chat {
  String? text;
  String? id;
  Sender? sender;
  int? timestamp;
  Chat({ this.text, this.sender,this.timestamp,this.id});

  Map<String, dynamic> toJson() => {'text': text, 'sender': sender!.toJson(),'timestamp':timestamp,'id':id};

  Chat.fromJson(Map<String, dynamic> json)
      : text = json['text'],timestamp = json['timestamp'],id = json['id'],
        sender = Sender.fromJson(json['sender']);
}
class Sender {
  int? id;
  String? name;
  String? role;
  String? avatar;

  Sender({this.id, this.name, this.role, this.avatar});

  Sender.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    role = json['role'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['role'] = role;
    data['avatar'] = avatar;
    return data;
  }
}