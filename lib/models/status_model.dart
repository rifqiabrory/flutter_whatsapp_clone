class StatusModel {
  final String name;
  final String time;
  final String imageUrl;

  StatusModel({required this.name, required this.time, required this.imageUrl});

  factory StatusModel.fromJson(Map<String, dynamic> json) {
    return StatusModel(
        name: json["name"], time: json["time"], imageUrl: json["image_url"]);
  }
}

List<StatusModel> statuses = <StatusModel>[
  StatusModel(
      name: "Pawan Kumar",
      time: "15:30",
      imageUrl:
          "https://pbs.twimg.com/media/EClDvMXU4AAw_lt?format=jpg&name=medium"),
  StatusModel(
      name: "Harvey Spectre",
      time: "17:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
  StatusModel(
      name: "Mike Ross",
      time: "5:00",
      imageUrl:
          "https://pbs.twimg.com/media/EClDvMXU4AAw_lt?format=jpg&name=medium"),
  StatusModel(
      name: "Rachel",
      time: "10:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
  StatusModel(
      name: "Barry Allen",
      time: "12:30",
      imageUrl:
          "https://pbs.twimg.com/media/EClDvMXU4AAw_lt?format=jpg&name=medium"),
  StatusModel(
      name: "Joe West",
      time: "15:30",
      imageUrl: "https://images.unsplash.com/photo-1597466765990-64ad1c35dafc"),
];
