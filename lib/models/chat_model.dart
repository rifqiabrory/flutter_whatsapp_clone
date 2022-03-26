class ChatModel {
  final String name;
  final String message;
  final String time;
  final String imageUrl;

  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.imageUrl});

  factory ChatModel.fromJson(Map<String, dynamic> json) {
    return ChatModel(
        name: json["name"],
        message: json["message"],
        time: json["time"],
        imageUrl: json["image_url"]);
  }
}

List<ChatModel> chats = <ChatModel>[
  ChatModel(
      name: "Pawan Kumar",
      message: "Hey Flutter, You are so amazing !",
      time: "15:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
  ChatModel(
      name: "Harvey Spectre",
      message: "Hey I have hacked whatsapp!",
      time: "17:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
  ChatModel(
      name: "Mike Ross",
      message: "Wassup !",
      time: "5:00",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
  ChatModel(
      name: "Rachel",
      message: "I'm good!",
      time: "10:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
  ChatModel(
      name: "Barry Allen",
      message: "I'm the fastest man alive!",
      time: "12:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
  ChatModel(
      name: "Joe West",
      message: "Hey Flutter, You are so cool !",
      time: "15:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
  ChatModel(
      name: "Barry Allen",
      message: "I'm the fastest man alive!",
      time: "12:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
  ChatModel(
      name: "Joe West",
      message: "Hey Flutter, You are so cool !",
      time: "15:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
  ChatModel(
      name: "Barry Allen",
      message: "I'm the fastest man alive!",
      time: "12:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
  ChatModel(
      name: "Joe West",
      message: "Hey Flutter, You are so cool !",
      time: "15:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
];
