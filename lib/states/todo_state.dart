import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:todoapp/models/todo_model.dart';

part 'todo_state.g.dart';

abstract class TodoState implements Built<TodoState, TodoStateBuilder> {
  BuiltList<Todo> get todos;

  TodoState._();
  factory TodoState([void Function(TodoStateBuilder) updates]) = _$TodoState;
}
