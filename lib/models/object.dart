import 'package:json_annotation/json_annotation.dart';

part 'object.g.dart';

@JsonSerializable()
class ObjectModel {
  ObjectModel();

  @JsonKey(name: 'name') String? name;
  @JsonKey(name: 'type') int? type;
  @JsonKey(name: 'thumb') String? thumb;
  @JsonKey(name: 'is_dir') bool? isDir;
  @JsonKey(name: 'modified') DateTime? modified;
  @JsonKey(name: 'size') int? size;
  @JsonKey(name: 'sign') String? sign;
  @JsonKey(name: 'raw_url') String? rawUrl;
  @JsonKey(name: 'readme') String? readme;
  @JsonKey(name: 'provider') String? provider;
  @JsonKey(name: 'related') List<ObjectModel>? related;
  
  factory ObjectModel.fromJson(Map<String,dynamic> json) => _$ObjectModelFromJson(json);
  Map<String, dynamic> toJson() => _$ObjectModelToJson(this);
}
