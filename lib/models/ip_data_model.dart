// //     final ipDataModel = ipDataModelFromJson(jsonString);

// // ignore_for_file: prefer_if_null_operators, unnecessary_null_comparison, prefer_null_aware_operators

// import 'dart:convert';

// IpDataModel ipDataModelFromJson(String str) =>
//     IpDataModel.fromJson(json.decode(str));

// String ipDataModelToJson(IpDataModel data) => json.encode(data.toJson());

// class IpDataModel {
//   IpDataModel({
//     required this.ip,
//     required this.type,
//     required this.continentCode,
//     required this.continentName,
//     required this.countryCode,
//     required this.countryName,
//     required this.regionCode,
//     required this.regionName,
//     required this.city,
//     required this.zip,
//     required this.latitude,
//     required this.longitude,
//     required this.location,
//   });

//   String ip;
//   String type;
//   String continentCode;
//   String continentName;
//   String countryCode;
//   String countryName;
//   String regionCode;
//   String regionName;
//   String city;
//   String zip;
//   double latitude;
//   double longitude;
//   Location location;

//   factory IpDataModel.fromJson(Map<String, dynamic> json) => IpDataModel(
//         ip: json["ip"] == null ? null : json["ip"],
//         type: json["type"] == null ? null : json["type"],
//         continentCode:
//             json["continent_code"] == null ? null : json["continent_code"],
//         continentName:
//             json["continent_name"] == null ? null : json["continent_name"],
//         countryCode: json["country_code"] == null ? null : json["country_code"],
//         countryName: json["country_name"] == null ? null : json["country_name"],
//         regionCode: json["region_code"] == null ? null : json["region_code"],
//         regionName: json["region_name"] == null ? null : json["region_name"],
//         city: json["city"] == null ? null : json["city"],
//         zip: json["zip"] == null ? null : json["zip"],
//         latitude: json["latitude"] == null ? null : json["latitude"].toDouble(),
//         longitude:
//             json["longitude"] == null ? null : json["longitude"].toDouble(),
//         location: Location(
//             geonameId: 9827976,
//             capital: 'Dhaka',
//             languages:  [ code: "bn",
//                 name: "Bengalia",
//                 native: "বাংলা"],
            
//             countryFlag: 'https://assets.ipstack.com/flags/bd.svg',
//             countryFlagEmoji: "B D",
//             countryFlagEmojiUnicode: "U+1F1E7 U+1F1E9",
//             callingCode: "880",
//             isEu: false),
//         //location: json["location"] == null ? null : Location.fromJson(json["location"]),
//       );

//   get code => null;

//   Map<String, dynamic> toJson() => {
//         "ip": ip == null ? null : ip,
//         "type": type == null ? null : type,
//         "continent_code": continentCode == null ? null : continentCode,
//         "continent_name": continentName == null ? null : continentName,
//         "country_code": countryCode == null ? null : countryCode,
//         "country_name": countryName == null ? null : countryName,
//         "region_code": regionCode == null ? null : regionCode,
//         "region_name": regionName == null ? null : regionName,
//         "city": city == null ? null : city,
//         "zip": zip == null ? null : zip,
//         "latitude": latitude == null ? null : latitude,
//         "longitude": longitude == null ? null : longitude,
//         "location": location == null ? null : location.toJson(),
//       };
// }

// class Location {
//   Location({
//     required this.geonameId,
//     required this.capital,
//     required this.languages,
//     required this.countryFlag,
//     required this.countryFlagEmoji,
//     required this.countryFlagEmojiUnicode,
//     required this.callingCode,
//     required this.isEu,
//   });

//   int geonameId;
//   String capital;
//   List<Language> languages;
//   String countryFlag;
//   String countryFlagEmoji;
//   String countryFlagEmojiUnicode;
//   String callingCode;
//   bool isEu;

//   factory Location.fromJson(Map<String, dynamic> json) => Location(
//         geonameId: json["geoname_id"] == null ? null : json["geoname_id"],
//         capital: json["capital"] == null ? null : json["capital"],
//         languages: json["languages"] == null ? null : List<Language>.from(json["languages"].map((x) => Language.fromJson(x))),
//         countryFlag: json["country_flag"] == null ? null : json["country_flag"],
//         countryFlagEmoji: json["country_flag_emoji"] == null
//             ? null
//             : json["country_flag_emoji"],
//         countryFlagEmojiUnicode: json["country_flag_emoji_unicode"] == null
//             ? null
//             : json["country_flag_emoji_unicode"],
//         callingCode: json["calling_code"] == null ? null : json["calling_code"],
//         isEu: json["is_eu"] == null ? null : json["is_eu"], languages: [],
//       );

//   Map<String, dynamic> toJson() => {
//         "geoname_id": geonameId == null ? null : geonameId,
//         "capital": capital == null ? null : capital,
//         "languages": languages == null
//             ? null
//             : List<dynamic>.from(languages.map((x) => x.toJson())),
//         "country_flag": countryFlag == null ? null : countryFlag,
//         "country_flag_emoji":
//             countryFlagEmoji == null ? null : countryFlagEmoji,
//         "country_flag_emoji_unicode":
//             countryFlagEmojiUnicode == null ? null : countryFlagEmojiUnicode,
//         "calling_code": callingCode == null ? null : callingCode,
//         "is_eu": isEu == null ? null : isEu,
//       };
// }

// class Language {
//   Language({
//     required this.code,
//     required this.name,
//     required this.native,
//   });

//   String code;
//   String name;
//   String native;

//   factory Language.fromJson(Map<String, dynamic> json) => Language(
//         code: json["code"] == null ? null : json["code"],
//         name: json["name"] == null ? null : json["name"],
//         native: json["native"] == null ? null : json["native"],
//       );

//   Map<String, dynamic> toJson() => {
//         "code": code == null ? null : code,
//         "name": name == null ? null : name,
//         "native": native == null ? null : native,
//       };
// }
