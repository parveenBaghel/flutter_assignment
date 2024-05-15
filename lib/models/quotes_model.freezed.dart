// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quotes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuotesModel _$QuotesModelFromJson(Map<String, dynamic> json) {
  return _QuotesModel.fromJson(json);
}

/// @nodoc
mixin _$QuotesModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'author')
  String? get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'authorSlug')
  String? get authorSlug => throw _privateConstructorUsedError;
  @JsonKey(name: 'length')
  int? get length => throw _privateConstructorUsedError;
  @JsonKey(name: 'dateAdded')
  String? get dateAdded => throw _privateConstructorUsedError;
  @JsonKey(name: 'dateModified')
  String? get dateModified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuotesModelCopyWith<QuotesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotesModelCopyWith<$Res> {
  factory $QuotesModelCopyWith(
          QuotesModel value, $Res Function(QuotesModel) then) =
      _$QuotesModelCopyWithImpl<$Res, QuotesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'author') String? author,
      @JsonKey(name: 'tags') List<String>? tags,
      @JsonKey(name: 'authorSlug') String? authorSlug,
      @JsonKey(name: 'length') int? length,
      @JsonKey(name: 'dateAdded') String? dateAdded,
      @JsonKey(name: 'dateModified') String? dateModified});
}

/// @nodoc
class _$QuotesModelCopyWithImpl<$Res, $Val extends QuotesModel>
    implements $QuotesModelCopyWith<$Res> {
  _$QuotesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? tags = freezed,
    Object? authorSlug = freezed,
    Object? length = freezed,
    Object? dateAdded = freezed,
    Object? dateModified = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authorSlug: freezed == authorSlug
          ? _value.authorSlug
          : authorSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      dateAdded: freezed == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuotesModelImplCopyWith<$Res>
    implements $QuotesModelCopyWith<$Res> {
  factory _$$QuotesModelImplCopyWith(
          _$QuotesModelImpl value, $Res Function(_$QuotesModelImpl) then) =
      __$$QuotesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'content') String? content,
      @JsonKey(name: 'author') String? author,
      @JsonKey(name: 'tags') List<String>? tags,
      @JsonKey(name: 'authorSlug') String? authorSlug,
      @JsonKey(name: 'length') int? length,
      @JsonKey(name: 'dateAdded') String? dateAdded,
      @JsonKey(name: 'dateModified') String? dateModified});
}

/// @nodoc
class __$$QuotesModelImplCopyWithImpl<$Res>
    extends _$QuotesModelCopyWithImpl<$Res, _$QuotesModelImpl>
    implements _$$QuotesModelImplCopyWith<$Res> {
  __$$QuotesModelImplCopyWithImpl(
      _$QuotesModelImpl _value, $Res Function(_$QuotesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? author = freezed,
    Object? tags = freezed,
    Object? authorSlug = freezed,
    Object? length = freezed,
    Object? dateAdded = freezed,
    Object? dateModified = freezed,
  }) {
    return _then(_$QuotesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authorSlug: freezed == authorSlug
          ? _value.authorSlug
          : authorSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int?,
      dateAdded: freezed == dateAdded
          ? _value.dateAdded
          : dateAdded // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$QuotesModelImpl extends _QuotesModel {
  const _$QuotesModelImpl(
      {@JsonKey(name: '_id') this.id = '',
      @JsonKey(name: 'content') this.content = '',
      @JsonKey(name: 'author') this.author = '',
      @JsonKey(name: 'tags') final List<String>? tags = const [''],
      @JsonKey(name: 'authorSlug') this.authorSlug = '',
      @JsonKey(name: 'length') this.length = 0,
      @JsonKey(name: 'dateAdded') this.dateAdded = '',
      @JsonKey(name: 'dateModified') this.dateModified = ''})
      : _tags = tags,
        super._();

  factory _$QuotesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuotesModelImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'content')
  final String? content;
  @override
  @JsonKey(name: 'author')
  final String? author;
  final List<String>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'authorSlug')
  final String? authorSlug;
  @override
  @JsonKey(name: 'length')
  final int? length;
  @override
  @JsonKey(name: 'dateAdded')
  final String? dateAdded;
  @override
  @JsonKey(name: 'dateModified')
  final String? dateModified;

  @override
  String toString() {
    return 'QuotesModel(id: $id, content: $content, author: $author, tags: $tags, authorSlug: $authorSlug, length: $length, dateAdded: $dateAdded, dateModified: $dateModified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuotesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.author, author) || other.author == author) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.authorSlug, authorSlug) ||
                other.authorSlug == authorSlug) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.dateAdded, dateAdded) ||
                other.dateAdded == dateAdded) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      content,
      author,
      const DeepCollectionEquality().hash(_tags),
      authorSlug,
      length,
      dateAdded,
      dateModified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuotesModelImplCopyWith<_$QuotesModelImpl> get copyWith =>
      __$$QuotesModelImplCopyWithImpl<_$QuotesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuotesModelImplToJson(
      this,
    );
  }
}

abstract class _QuotesModel extends QuotesModel {
  const factory _QuotesModel(
          {@JsonKey(name: '_id') final String? id,
          @JsonKey(name: 'content') final String? content,
          @JsonKey(name: 'author') final String? author,
          @JsonKey(name: 'tags') final List<String>? tags,
          @JsonKey(name: 'authorSlug') final String? authorSlug,
          @JsonKey(name: 'length') final int? length,
          @JsonKey(name: 'dateAdded') final String? dateAdded,
          @JsonKey(name: 'dateModified') final String? dateModified}) =
      _$QuotesModelImpl;
  const _QuotesModel._() : super._();

  factory _QuotesModel.fromJson(Map<String, dynamic> json) =
      _$QuotesModelImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'author')
  String? get author;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags;
  @override
  @JsonKey(name: 'authorSlug')
  String? get authorSlug;
  @override
  @JsonKey(name: 'length')
  int? get length;
  @override
  @JsonKey(name: 'dateAdded')
  String? get dateAdded;
  @override
  @JsonKey(name: 'dateModified')
  String? get dateModified;
  @override
  @JsonKey(ignore: true)
  _$$QuotesModelImplCopyWith<_$QuotesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
