import 'package:built_value/built_value.dart';
part 'todo_event.g.dart';

abstract class TodoEvent {}

abstract class TodoAdded
    implements Built<TodoAdded, TodoAddedBuilder>, TodoEvent {
  TodoAdded._();

  factory TodoAdded([void Function(TodoAddedBuilder) updates]) = _$TodoAdded;

  String get title;
}

abstract class TodoIncomplete
    implements Built<TodoIncomplete, TodoIncompleteBuilder>, TodoEvent {
  TodoIncomplete._();

  factory TodoIncomplete([void Function(TodoIncompleteBuilder) updates]) =
      _$TodoIncomplete;

  String get id;
}

abstract class TodoCompleted
    implements Built<TodoCompleted, TodoCompletedBuilder>, TodoEvent {
  TodoCompleted._();

  factory TodoCompleted([void Function(TodoCompletedBuilder) updates]) =
      _$TodoCompleted;

  String get id;
}

abstract class TodoRemoved
    implements Built<TodoRemoved, TodoRemovedBuilder>, TodoEvent {
  TodoRemoved._();

  factory TodoRemoved([void Function(TodoRemovedBuilder) updates]) =
      _$TodoRemoved;

  String get id;
}
