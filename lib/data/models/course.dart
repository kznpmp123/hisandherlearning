
import 'package:json_annotation/json_annotation.dart';

import 'lesson.dart';

part 'course.g.dart';
@JsonSerializable(explicitToJson: true)
class Course {
  int id;
  @JsonKey(name: 'lesson_set')
  List<Lesson> lessonSet;

  String name;
  String description;

  @JsonKey(name: 'cover_img_url')
  String coverImgUrl;

  int price;

  @JsonKey(name: 'created_at')
  String createdAt;

  @JsonKey(name: 'modified_at')
  String modifiedAt;


  Course(
      {
        this.id,
        this.lessonSet,
        this.name,
        this.description,
        this.coverImgUrl,
        this.price,
        this.createdAt,
        this.modifiedAt
      }
  );

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
  Map<String, dynamic> toJson() => _$CourseToJson(this);
}