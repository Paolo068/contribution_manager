import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class ProjectModel extends Equatable {
  final String uid;
  final String name;
  final String dueDate;
  final String startDate;
  const ProjectModel({
    required this.uid,
    required this.name,
    required this.dueDate,
    required this.startDate,
  });

  ProjectModel copyWith({
    String? uid,
    String? name,
    String? dueDate,
    String? startDate,
  }) {
    return ProjectModel(
      uid: uid ?? this.uid,
      name: name ?? this.name,
      dueDate: dueDate ?? this.dueDate,
      startDate: startDate ?? this.startDate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'dueDate': dueDate,
      'startDate': startDate,
    };
  }

  factory ProjectModel.fromMap(Map<String, dynamic> map) {
    return ProjectModel(
      uid: map['uid'] ?? '',
      name: map['name'] ?? '',
      dueDate: map['dueDate'] ?? '',
      startDate: map['startDate'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProjectModel.fromJson(String source) => ProjectModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProjectModel(uid: $uid, name: $name, dueDate: $dueDate, startDate: $startDate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProjectModel &&
        other.uid == uid &&
        other.name == name &&
        other.dueDate == dueDate &&
        other.startDate == startDate;
  }

  @override
  int get hashCode {
    return uid.hashCode ^ name.hashCode ^ dueDate.hashCode ^ startDate.hashCode;
  }

  @override
  List<Object?> get props => [uid, name, dueDate, startDate];
}
