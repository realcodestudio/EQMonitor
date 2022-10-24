/// ## Earthquake_v2 model
/// ```sql:init.sql
/// CREATE TABLE IF NOT EXISTS earthquake_v2(
///  id bigint GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
///  type TEXT NOT NULL,
///  originTime timestamp, --地震発生時刻
///  arraivalTime timestamp NOT NULL, -- 地震検知時刻
///  hypoCenter jsonb, -- 震源要素
///  magnitude jsonb, --マグニチュード要素
///  maxInt text, -- 最大震度
///  maxLpgmInt text, -- 最大長周期地震動階級
///  telegrams jsonb[] NOT NULL -- 電文リスト
///);
///```


// import 'package:json_annotation/json_annotation.dart';
//
// part 'earthquake_v2.g.dart';
//
// @JsonSerializable(explicitToJson: true)
// class EarthquakeV2 {
//   factory EarthquakeV2.fromJson(Map<String, dynamic> json) =>
//       _$EarthquakeV2FromJson(json);
//
//   EarthquakeV2(
//       {this.id,
//       this.type,
//       this.originTime,
//       this.arraivalTime,
//       this.hypoCenter,
//       this.magnitude,
//       this.maxInt,
//       this.maxLpgmInt,
//       this.telegrams});
//   final int id;
//   final String type;
//   final DateTime originTime;
//   final DateTime? arraivalTime;
//   final Map<String, dynamic>? hypoCenter;
//   final Map<String, dynamic>? magnitude;
//   final String maxInt;
//   final String maxLpgmInt;
//   final List<Map<String, dynamic>> telegrams;
//   Map<String, dynamic> toJson() => _$EarthquakeV2ToJson(this);
// }
