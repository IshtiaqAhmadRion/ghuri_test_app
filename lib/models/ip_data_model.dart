// To parse this JSON data, do
//
//     final ipDataModel = ipDataModelFromJson(jsonString);



import 'dart:convert';

class IpDataModel {
  IpDataModel({
    this.ip,
    this.type,
    this.continentCode,
    this.continentName,
    this.countryCode,
    this.countryName,
    this.regionCode,
    this.regionName,
    this.city,
    this.zip,
    this.latitude,
    this.longitude,
    this.location,
  });

  final String? ip;
  final String? type;
  final String? continentCode;
  final String? continentName;
  final String? countryCode;
  final String? countryName;
  final String? regionCode;
  final String? regionName;
  final String? city;
  final String? zip;
  final double? latitude;
  final double? longitude;
  final Location? location;

  IpDataModel copyWith({
    String? ip,
    String? type,
    String? continentCode,
    String? continentName,
    String? countryCode,
    String? countryName,
    String? regionCode,
    String? regionName,
    String? city,
    String? zip,
    double? latitude,
    double? longitude,
    Location? location,
  }) =>
      IpDataModel(
        ip: ip ?? this.ip,
        type: type ?? this.type,
        continentCode: continentCode ?? this.continentCode,
        continentName: continentName ?? this.continentName,
        countryCode: countryCode ?? this.countryCode,
        countryName: countryName ?? this.countryName,
        regionCode: regionCode ?? this.regionCode,
        regionName: regionName ?? this.regionName,
        city: city ?? this.city,
        zip: zip ?? this.zip,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        location: location ?? this.location,
      );

  factory IpDataModel.fromRawJson(String str) =>
      IpDataModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IpDataModel.fromJson(Map<String, dynamic> json) => IpDataModel(
        ip: json["ip"] ?? json["ip"],
        type: json["type"] ?? json["type"],
        continentCode: json["continent_code"] ?? json["continent_code"],
        continentName: json["continent_name"] ?? json["continent_name"],
        countryCode: json["country_code"] ?? json["country_code"],
        countryName: json["country_name"] ?? json["country_name"],
        regionCode: json["region_code"] ?? json["region_code"],
        regionName: json["region_name"] ?? json["region_name"],
        city: json["city"] ?? json["city"],
        zip: json["zip"] ?? json["zip"],
        latitude: json["latitude"] ?? json["latitude"].toDouble(),
        longitude: json["longitude"] ?? json["longitude"].toDouble(),
        location: json["location"] == null
            ? null
            : Location.fromJson(json["location"]),
      );

  Map<String, dynamic> toJson() => {
        "ip": ip ?? ip,
        "type": type ?? type,
        "continent_code": continentCode ?? continentCode,
        "continent_name": continentName ?? continentName,
        "country_code": countryCode ?? countryCode,
        "country_name": countryName ?? countryName,
        "region_code": regionCode ?? regionCode,
        "region_name": regionName ?? regionName,
        "city": city ?? city,
        "zip": zip ?? zip,
        "latitude": latitude ?? latitude,
        "longitude": longitude ?? longitude,
        "location": location ?? location!.toJson(),
      };
}

class Location {
  Location({
    this.geonameId,
    this.capital,
    this.languages,
    this.countryFlag,
    this.countryFlagEmoji,
    this.countryFlagEmojiUnicode,
    this.callingCode,
    this.isEu,
  });

  final int? geonameId;
  final String? capital;
  final List<Language>? languages;
  final String? countryFlag;
  final String? countryFlagEmoji;
  final String? countryFlagEmojiUnicode;
  final String? callingCode;
  final bool? isEu;

  Location copyWith({
    int? geonameId,
    String? capital,
    List<Language>? languages,
    String? countryFlag,
    String? countryFlagEmoji,
    String? countryFlagEmojiUnicode,
    String? callingCode,
    bool? isEu,
  }) =>
      Location(
        geonameId: geonameId ?? this.geonameId,
        capital: capital ?? this.capital,
        languages: languages ?? this.languages,
        countryFlag: countryFlag ?? this.countryFlag,
        countryFlagEmoji: countryFlagEmoji ?? this.countryFlagEmoji,
        countryFlagEmojiUnicode:
            countryFlagEmojiUnicode ?? this.countryFlagEmojiUnicode,
        callingCode: callingCode ?? this.callingCode,
        isEu: isEu ?? this.isEu,
      );

  factory Location.fromRawJson(String str) =>
      Location.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        geonameId: json["geoname_id"] ?? json["geoname_id"],
        capital: json["capital"] ?? json["capital"],
        languages: json["languages"] == null
            ? null
            : List<Language>.from(
                json["languages"].map((x) => Language.fromJson(x))),
        countryFlag: json["country_flag"] ?? json["country_flag"],
        countryFlagEmoji:
            json["country_flag_emoji"] ?? json["country_flag_emoji"],
        countryFlagEmojiUnicode: json["country_flag_emoji_unicode"] ??
            json["country_flag_emoji_unicode"],
        callingCode: json["calling_code"] ?? json["calling_code"],
        isEu: json["is_eu"] ?? json["is_eu"],
      );

  Map<String, dynamic> toJson() => {
        "geoname_id": geonameId ?? geonameId,
        "capital": capital ?? capital,
        "languages": languages == null
            ? null
            : List<dynamic>.from(languages!.map((x) => x.toJson())),
        "country_flag": countryFlag ?? countryFlag,
        "country_flag_emoji": countryFlagEmoji ?? countryFlagEmoji,
        "country_flag_emoji_unicode":
            countryFlagEmojiUnicode ?? countryFlagEmojiUnicode,
        "calling_code": callingCode ?? callingCode,
        "is_eu": isEu ?? isEu,
      };
}

class Language {
  Language({
    this.code,
    this.name,
    this.native,
  });

  final String? code;
  final String? name;
  final String? native;

  Language copyWith({
    String? code,
    String? name,
    String? native,
  }) =>
      Language(
        code: code ?? this.code,
        name: name ?? this.name,
        native: native ?? this.native,
      );

  factory Language.fromRawJson(String str) =>
      Language.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Language.fromJson(Map<String, dynamic> json) => Language(
        code: json["code"] ?? json["code"],
        name: json["name"] ?? json["name"],
        native: json["native"] ?? json["native"],
      );

  Map<String, dynamic> toJson() => {
        "code": code ?? code,
        "name": name ?? name,
        "native": native ?? native,
      };
}
