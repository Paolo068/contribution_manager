import 'dart:convert';

import 'package:flutter/widgets.dart';

@immutable
class ProjectModel {
  final String? uid;
  final String? name;
  final String? dueDate;
  final String? startDate;
  final String? description;
  const ProjectModel({
    this.uid,
    this.name,
    this.dueDate,
    this.startDate,
    this.description,
  });

  ProjectModel copyWith({
    ValueGetter<String?>? uid,
    ValueGetter<String?>? name,
    ValueGetter<String?>? dueDate,
    ValueGetter<String?>? startDate,
    ValueGetter<String?>? description,
  }) {
    return ProjectModel(
      uid: uid != null ? uid() : this.uid,
      name: name != null ? name() : this.name,
      dueDate: dueDate != null ? dueDate() : this.dueDate,
      startDate: startDate != null ? startDate() : this.startDate,
      description: description != null ? description() : this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'dueDate': dueDate,
      'startDate': startDate,
      'description': description,
    };
  }

  factory ProjectModel.fromMap(Map<String, dynamic> map) {
    return ProjectModel(
      uid: map['uid'],
      name: map['name'],
      dueDate: map['dueDate'],
      startDate: map['startDate'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProjectModel.fromJson(String source) => ProjectModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProjectModel(uid: $uid, name: $name, dueDate: $dueDate, startDate: $startDate, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProjectModel &&
        other.uid == uid &&
        other.name == name &&
        other.dueDate == dueDate &&
        other.startDate == startDate &&
        other.description == description;
  }

  @override
  int get hashCode {
    return uid.hashCode ^ name.hashCode ^ dueDate.hashCode ^ startDate.hashCode ^ description.hashCode;
  }
}
