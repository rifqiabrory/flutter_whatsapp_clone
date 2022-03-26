enum CallTypes {
  incoming,
  outgoing,
  missed,
}

extension ParseToString on CallTypes {
  String toShortString() {
    return toString().split('.').last;
  }
}

class CallModel {
  final String name;
  final String time;
  final String imageUrl;
  final CallTypes type;
  final bool hasVideo;

  CallModel(
      {required this.name,
      required this.time,
      required this.imageUrl,
      required this.type,
      required this.hasVideo});

  factory CallModel.fromJson(Map<String, dynamic> json) {
    return CallModel(
        name: json["name"],
        time: json["time"],
        imageUrl: json["image_url"],
        type: json["type"],
        hasVideo: json["has_video"]);
  }
}

List<CallModel> calls = <CallModel>[
  CallModel(
      name: "Pawan Kumar",
      time: "15:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc",
      type: CallTypes.incoming,
      hasVideo: true),
  CallModel(
      name: "Harvey Spectre",
      time: "17:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc",
      type: CallTypes.incoming,
      hasVideo: true),
  CallModel(
      name: "Mike Ross",
      time: "5:00",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc",
      type: CallTypes.outgoing,
      hasVideo: true),
  CallModel(
      name: "Rachel",
      time: "10:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc",
      type: CallTypes.outgoing,
      hasVideo: false),
  CallModel(
      name: "Barry Allen",
      time: "12:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc",
      type: CallTypes.incoming,
      hasVideo: false),
  CallModel(
      name: "Joe West",
      time: "15:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc",
      type: CallTypes.missed,
      hasVideo: true),
  CallModel(
      name: "Barry Allen",
      time: "12:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc",
      type: CallTypes.missed,
      hasVideo: true),
  CallModel(
      name: "Joe West",
      time: "15:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc",
      type: CallTypes.missed,
      hasVideo: false),
  CallModel(
      name: "Barry Allen",
      time: "12:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc",
      type: CallTypes.incoming,
      hasVideo: false),
  CallModel(
      name: "Joe West",
      time: "15:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc",
      type: CallTypes.incoming,
      hasVideo: false),
];
