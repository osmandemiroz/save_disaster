// ignore_for_file: public_member_api_docs

import 'package:equatable/equatable.dart';

///Addresses model
final class Addresses with EquatableMixin {
  Addresses({
    this.name,
    this.nameId,
    this.country,
    this.locality,
    this.postalCode,
    this.street,
    this.subLocality,
    this.id,
  });

  factory Addresses.fromJson(Map<String, dynamic> json) {
    return Addresses(
      name: json['name'] as String?,
      nameId: json['nameId'] as String?,
      country: json['country'] as String?,
      locality: json['locality'] as String?,
      postalCode: json['postalCode'] as String?,
      street: json['street'] as String?,
      subLocality: json['subLocality'] as String?,
      id: json['id'] as String?,
    );
  }
  final String? name;
  final String? nameId;
  final String? country;
  final String? locality;
  final String? postalCode;
  final String? street;
  final String? subLocality;
  final String? id;

  @override
  List<Object?> get props =>
      [name, nameId, country, locality, postalCode, street, subLocality, id];

  Addresses copyWith({
    String? name,
    String? nameId,
    String? country,
    String? locality,
    String? postalCode,
    String? street,
    String? subLocality,
    String? id,
  }) {
    return Addresses(
      name: name ?? this.name,
      nameId: nameId ?? this.nameId,
      country: country ?? this.country,
      locality: locality ?? this.locality,
      postalCode: postalCode ?? this.postalCode,
      street: street ?? this.street,
      subLocality: subLocality ?? this.subLocality,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'nameId': nameId,
      'country': country,
      'locality': locality,
      'postalCode': postalCode,
      'street': street,
      'subLocality': subLocality,
      'id': id,
    };
  }
}
