// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region_intensity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegionIntensity _$$_RegionIntensityFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_RegionIntensity',
      json,
      ($checkedConvert) {
        final val = _$_RegionIntensity(
          code: $checkedConvert('code', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          maxInt: $checkedConvert(
              'maxInt', (v) => $enumDecodeNullable(_$JmaIntensityEnumMap, v)),
          maxLgInt: $checkedConvert('maxLgInt',
              (v) => $enumDecodeNullable(_$JmaLgIntensityEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_RegionIntensityToJson(_$_RegionIntensity instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'maxInt': _$JmaIntensityEnumMap[instance.maxInt],
      'maxLgInt': _$JmaLgIntensityEnumMap[instance.maxLgInt],
    };

const _$JmaIntensityEnumMap = {
  JmaIntensity.one: '1',
  JmaIntensity.two: '2',
  JmaIntensity.three: '3',
  JmaIntensity.four: '4',
  JmaIntensity.fiveLower: '5-',
  JmaIntensity.fiveUpper: '5+',
  JmaIntensity.sixLower: '6-',
  JmaIntensity.sixUpper: '6+',
  JmaIntensity.seven: '7',
  JmaIntensity.fiveUpperNoInput: '!5-',
};

const _$JmaLgIntensityEnumMap = {
  JmaLgIntensity.zero: '0',
  JmaLgIntensity.one: '1',
  JmaLgIntensity.two: '2',
  JmaLgIntensity.three: '3',
  JmaLgIntensity.four: '4',
};
