import 'package:freezed_annotation/freezed_annotation.dart';

part 'quotes_model.freezed.dart';

part 'quotes_model.g.dart';

@freezed
class QuotesModel with _$QuotesModel {

  const QuotesModel._();

  @JsonSerializable(explicitToJson: true)
  const factory QuotesModel(
  {@JsonKey(name: '_id') @Default('')    String? id,
  @JsonKey(name: 'content') @Default('') String? content,
  @JsonKey(name: 'author') @Default('')  String? author,
  @JsonKey(name: 'tags') @Default([''])  List<String>? tags,
  @JsonKey(name: 'authorSlug') @Default('')  String? authorSlug,
  @JsonKey(name: 'length') @Default(0)  int? length,
  @JsonKey(name: 'dateAdded') @Default('')  String? dateAdded,
  @JsonKey(name: 'dateModified') @Default('')  String? dateModified}) = _QuotesModel;

  factory QuotesModel.fromJson(Map<String, dynamic> json) =>
  _$QuotesModelFromJson(json);


}
