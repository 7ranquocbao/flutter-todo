// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Todo extends Todo {
  @override
  final String id;
  @override
  final String title;
  @override
  final String status;

  factory _$Todo([void Function(TodoBuilder)? updates]) =>
      (TodoBuilder()..update(updates))._build();

  _$Todo._({required this.id, required this.title, required this.status})
    : super._();
  @override
  Todo rebuild(void Function(TodoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoBuilder toBuilder() => TodoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Todo &&
        id == other.id &&
        title == other.title &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Todo')
          ..add('id', id)
          ..add('title', title)
          ..add('status', status))
        .toString();
  }
}

class TodoBuilder implements Builder<Todo, TodoBuilder> {
  _$Todo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  TodoBuilder();

  TodoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Todo other) {
    _$v = other as _$Todo;
  }

  @override
  void update(void Function(TodoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Todo build() => _build();

  _$Todo _build() {
    final _$result =
        _$v ??
        _$Todo._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Todo', 'id'),
          title: BuiltValueNullFieldError.checkNotNull(title, r'Todo', 'title'),
          status: BuiltValueNullFieldError.checkNotNull(
            status,
            r'Todo',
            'status',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
