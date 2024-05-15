// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quotes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuotesModelImpl _$$QuotesModelImplFromJson(Map<String, dynamic> json) =>
    _$QuotesModelImpl(
      id: json['_id'] as String? ?? '',
      content: json['content'] as String? ?? '',
      author: json['author'] as String? ?? '',
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [''],
      authorSlug: json['authorSlug'] as String? ?? '',
      length: (json['length'] as num?)?.toInt() ?? 0,
      dateAdded: json['dateAdded'] as String? ?? '',
      dateModified: json['dateModified'] as String? ?? '',
    );

Map<String, dynamic> _$$QuotesModelImplToJson(_$QuotesModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'content': instance.content,
      'author': instance.author,
      'tags': instance.tags,
      'authorSlug': instance.authorSlug,
      'length': instance.length,
      'dateAdded': instance.dateAdded,
      'dateModified': instance.dateModified,
    };
