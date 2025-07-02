import 'package:built_value/built_value.dart';
part 'todo_model.g.dart';

abstract class Todo implements Built<Todo, TodoBuilder> {
  String get id;
  String get title;
  String get status;

  Todo._();
  factory Todo([void Function(TodoBuilder) updates]) = _$Todo;
}
