// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodoState extends TodoState {
  @override
  final BuiltList<Todo> todos;

  factory _$TodoState([void Function(TodoStateBuilder)? updates]) =>
      (TodoStateBuilder()..update(updates))._build();

  _$TodoState._({required this.todos}) : super._();
  @override
  TodoState rebuild(void Function(TodoStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoStateBuilder toBuilder() => TodoStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoState && todos == other.todos;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, todos.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'TodoState',
    )..add('todos', todos)).toString();
  }
}

class TodoStateBuilder implements Builder<TodoState, TodoStateBuilder> {
  _$TodoState? _$v;

  ListBuilder<Todo>? _todos;
  ListBuilder<Todo> get todos => _$this._todos ??= ListBuilder<Todo>();
  set todos(ListBuilder<Todo>? todos) => _$this._todos = todos;

  TodoStateBuilder();

  TodoStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _todos = $v.todos.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoState other) {
    _$v = other as _$TodoState;
  }

  @override
  void update(void Function(TodoStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TodoState build() => _build();

  _$TodoState _build() {
    _$TodoState _$result;
    try {
      _$result = _$v ?? _$TodoState._(todos: todos.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todos';
        todos.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TodoState',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
