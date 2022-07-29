import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ListDataMapModel {
  final String id;
  final String stnId;
  final String ondate;
  final String soil;
  final String temp;
  final String moisture;
  final String vBattery;
  final String vCharger;
  final String aCharger;
  final String pCharger;
  final String wCharger;
  final String r15m;
  final String r12h;
  final String r24h;
  final String rc15m;
  final String rc12h;
  final String rc24h;
  final String pm25;
  final String pm10;
  final String regDate;
  final String upd;
  ListDataMapModel({
    required this.id,
    required this.stnId,
    required this.ondate,
    required this.soil,
    required this.temp,
    required this.moisture,
    required this.vBattery,
    required this.vCharger,
    required this.aCharger,
    required this.pCharger,
    required this.wCharger,
    required this.r15m,
    required this.r12h,
    required this.r24h,
    required this.rc15m,
    required this.rc12h,
    required this.rc24h,
    required this.pm25,
    required this.pm10,
    required this.regDate,
    required this.upd,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'stnId': stnId,
      'ondate': ondate,
      'soil': soil,
      'temp': temp,
      'moisture': moisture,
      'vBattery': vBattery,
      'vCharger': vCharger,
      'aCharger': aCharger,
      'pCharger': pCharger,
      'wCharger': wCharger,
      'r15m': r15m,
      'r12h': r12h,
      'r24h': r24h,
      'rc15m': rc15m,
      'rc12h': rc12h,
      'rc24h': rc24h,
      'pm25': pm25,
      'pm10': pm10,
      'regDate': regDate,
      'upd': upd,
    };
  }

  factory ListDataMapModel.fromMap(Map<String, dynamic> map) {
    return ListDataMapModel(
      id: (map['id'] ?? '') as String,
      stnId: (map['stnId'] ?? '') as String,
      ondate: (map['ondate'] ?? '') as String,
      soil: (map['soil'] ?? '') as String,
      temp: (map['temp'] ?? '') as String,
      moisture: (map['moisture'] ?? '') as String,
      vBattery: (map['vBattery'] ?? '') as String,
      vCharger: (map['vCharger'] ?? '') as String,
      aCharger: (map['aCharger'] ?? '') as String,
      pCharger: (map['pCharger'] ?? '') as String,
      wCharger: (map['wCharger'] ?? '') as String,
      r15m: (map['r15m'] ?? '') as String,
      r12h: (map['r12h'] ?? '') as String,
      r24h: (map['r24h'] ?? '') as String,
      rc15m: (map['rc15m'] ?? '') as String,
      rc12h: (map['rc12h'] ?? '') as String,
      rc24h: (map['rc24h'] ?? '') as String,
      pm25: (map['pm25'] ?? '') as String,
      pm10: (map['pm10'] ?? '') as String,
      regDate: (map['regDate'] ?? '') as String,
      upd: (map['upd'] ?? '') as String,
    );
  }

  factory ListDataMapModel.fromJson(String source) => ListDataMapModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
