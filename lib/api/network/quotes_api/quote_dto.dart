class QuoteDto {
  int id;
  Originator originator;
  String languageCode;
  String content;
  String url;
  List<String> tags;

  QuoteDto({
    required this.id,
    required this.originator,
    required this.languageCode,
    required this.content,
    required this.url,
    required this.tags,
  });

  factory QuoteDto.fromJson(Map<String, dynamic> json) => QuoteDto(
        id: json["id"],
        originator: Originator.fromJson(json["originator"]),
        languageCode: json["language_code"],
        content: json["content"],
        url: json["url"],
        tags: List<String>.from(json["tags"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "originator": originator.toJson(),
        "language_code": languageCode,
        "content": content,
        "url": url,
        "tags": List<dynamic>.from(tags.map((x) => x)),
      };
}

class Originator {
  int id;
  String languageCode;
  String description;
  int masterId;
  String name;
  String url;

  Originator({
    required this.id,
    required this.languageCode,
    required this.description,
    required this.masterId,
    required this.name,
    required this.url,
  });

  factory Originator.fromJson(Map<String, dynamic> json) => Originator(
        id: json["id"],
        languageCode: json["language_code"],
        description: json["description"],
        masterId: json["master_id"],
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "language_code": languageCode,
        "description": description,
        "master_id": masterId,
        "name": name,
        "url": url,
      };
}
