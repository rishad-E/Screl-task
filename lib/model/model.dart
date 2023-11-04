// // To parse this JSON data, do
// //
// //     final responseModel = responseModelFromJson(jsonString);

// import 'dart:convert';

// List<ResponseModel> responseModelFromJson(String str) => List<ResponseModel>.from(json.decode(str).map((x) => ResponseModel.fromJson(x)));

// String responseModelToJson(List<ResponseModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ResponseModel {
    final int? id;
    final String? name;
    final String? username;
    final String? email;
    final Address? address;
    final String? phone;
    final String? website;
    final Company? company;

    ResponseModel({
        this.id,
        this.name,
        this.username,
        this.email,
        this.address,
        this.phone,
        this.website,
        this.company,
    });

    factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        address: json["address"] == null ? null : Address.fromJson(json["address"]),
        phone: json["phone"],
        website: json["website"],
        company: json["company"] == null ? null : Company.fromJson(json["company"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "address": address?.toJson(),
        "phone": phone,
        "website": website,
        "company": company?.toJson(),
    };
}

class Address {
    final String? street;
    final String? suite;
    final String? city;
    final String? zipcode;
    final Geo? geo;

    Address({
        this.street,
        this.suite,
        this.city,
        this.zipcode,
        this.geo,
    });

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: json["street"],
        suite: json["suite"],
        city: json["city"],
        zipcode: json["zipcode"],
        geo: json["geo"] == null ? null : Geo.fromJson(json["geo"]),
    );

    Map<String, dynamic> toJson() => {
        "street": street,
        "suite": suite,
        "city": city,
        "zipcode": zipcode,
        "geo": geo?.toJson(),
    };
}

class Geo {
    final String? lat;
    final String? lng;

    Geo({
        this.lat,
        this.lng,
    });

    factory Geo.fromJson(Map<String, dynamic> json) => Geo(
        lat: json["lat"],
        lng: json["lng"],
    );

    Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
    };
}

class Company {
    final String? name;
    final String? catchPhrase;
    final String? bs;

    Company({
        this.name,
        this.catchPhrase,
        this.bs,
    });

    factory Company.fromJson(Map<String, dynamic> json) => Company(
        name: json["name"],
        catchPhrase: json["catchPhrase"],
        bs: json["bs"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "catchPhrase": catchPhrase,
        "bs": bs,
    };
}
