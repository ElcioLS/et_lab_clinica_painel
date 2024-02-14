// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'painel_checkin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PainelCheckinModel _$PainelCheckinModelFromJson(Map<String, dynamic> json) =>
    PainelCheckinModel(
      id: json['id'] as String,
      password: json['password'] as String,
      attendantDesk: json['attendant_desk'] as int,
    );

Map<String, dynamic> _$PainelCheckinModelToJson(PainelCheckinModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'attendant_desk': instance.attendantDesk,
    };
