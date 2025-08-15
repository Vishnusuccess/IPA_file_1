import 'package:equatable/equatable.dart';

class StringMultipleSelectAnswerModel extends Equatable {
  const StringMultipleSelectAnswerModel({
    this.name,
    this.value,
  });

  factory StringMultipleSelectAnswerModel.fromJson(Map<String, dynamic> json) {
    return StringMultipleSelectAnswerModel(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );
  }

  final String? name;
  final String? value;

  Map<String, dynamic> toJson() => {
        'name': name,
        'value': value,
      };

  @override
  List<Object?> get props => [name, value];
}
