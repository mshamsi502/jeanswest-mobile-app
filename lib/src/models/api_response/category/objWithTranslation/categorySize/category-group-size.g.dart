// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category-group-size.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryGroupSizeRes _$CategoryGroupSizeResFromJson(Map<String, dynamic> json) {
  return CategoryGroupSizeRes(
    id: json['id'] as String,
    code: json['code'] as String,
    name: json['name'] as String,
    value: (json['value'] as List)
        ?.map((e) => e == null
            ? null
            : CategorySubGroupSizeRes.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    active: json['active'] as bool,
    priority: json['priority'] as int,
    translation: (json['translation'] as List)
        ?.map((e) => e == null
            ? null
            : CategoryTranslationRes.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CategoryGroupSizeResToJson(
        CategoryGroupSizeRes instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'value': instance.value,
      'active': instance.active,
      'priority': instance.priority,
      'translation': instance.translation,
    };