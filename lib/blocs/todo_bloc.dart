import 'package:bloc/bloc.dart';
import 'package:built_collection/built_collection.dart';
import 'package:todoapp/events/todo_event.dart';
import 'package:todoapp/models/todo_model.dart';
import 'package:todoapp/states/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(TodoState((u) => u..todos = ListBuilder<Todo>())) {
    on<TodoAdded>((event, emit) {
      final newTodo = Todo(
        (u) => u
          ..id = DateTime.now().millisecondsSinceEpoch.toString()
          ..title = event.title
          ..status = 'incomplete',
      );

      emit(state.rebuild((u) => u..todos.add(newTodo)));
    });
    on<TodoCompleted>((event, emit) {
      emit(
        state.rebuild((u) {
          final index = u.todos.build().indexWhere(
            (todo) => todo.id == event.id,
          );
          if (index != -1) {
            u.todos[index] = u.todos[index].rebuild(
              (uu) => uu.status = 'completed',
            );
          }
        }),
      );
    });
    on<TodoIncomplete>((event, emit) {
      emit(
        state.rebuild((u) {
          final index = u.todos.build().indexWhere(
            (todo) => todo.id == event.id,
          );
          if (index != -1) {
            u.todos[index] = u.todos[index].rebuild(
              (uu) => uu.status = 'incomplete',
            );
          }
        }),
      );
    });
    on<TodoRemoved>((event, emit) {
      emit(
        state.rebuild(
          (u) => u.todos.removeWhere((todo) => todo.id == event.id),
        ),
      );
    });
  }
}
