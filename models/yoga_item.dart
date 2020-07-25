import 'package:flutter/cupertino.dart';

/// single yoga pose
///
/// [id] is unique number in the database
/// [duration] shows how long is the pose to hold
///
class YogaItem {
  final int id;
  final Image picture;
  final String description;
  final double duration;

  YogaItem({this.id, this.picture, this.description, this.duration});
}
