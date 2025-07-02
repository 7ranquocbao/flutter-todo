// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TodoAdded extends TodoAdded {
  @override
  final String title;

  factory _$TodoAdded([void Function(TodoAddedBuilder)? updates]) =>
      (TodoAddedBuilder()..update(updates))._build();

  _$TodoAdded._({required this.title}) : super._();
  @override
  TodoAdded rebuild(void Function(TodoAddedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoAddedBuilder toBuilder() => TodoAddedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoAdded && title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'TodoAdded',
    )..add('title', title)).toString();
  }
}

class TodoAddedBuilder implements Builder<TodoAdded, TodoAddedBuilder> {
  _$TodoAdded? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  TodoAddedBuilder();

  TodoAddedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoAdded other) {
    _$v = other as _$TodoAdded;
  }

  @override
  void update(void Function(TodoAddedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TodoAdded build() => _build();

  _$TodoAdded _build() {
    final _$result =
        _$v ??
        _$TodoAdded._(
          title: BuiltValueNullFieldError.checkNotNull(
            title,
            r'TodoAdded',
            'title',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$TodoIncomplete extends TodoIncomplete {
  @override
  final String id;

  factory _$TodoIncomplete([void Function(TodoIncompleteBuilder)? updates]) =>
      (TodoIncompleteBuilder()..update(updates))._build();

  _$TodoIncomplete._({required this.id}) : super._();
  @override
  TodoIncomplete rebuild(void Function(TodoIncompleteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoIncompleteBuilder toBuilder() => TodoIncompleteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoIncomplete && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'TodoIncomplete',
    )..add('id', id)).toString();
  }
}

class TodoIncompleteBuilder
    implements Builder<TodoIncomplete, TodoIncompleteBuilder> {
  _$TodoIncomplete? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  TodoIncompleteBuilder();

  TodoIncompleteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoIncomplete other) {
    _$v = other as _$TodoIncomplete;
  }

  @override
  void update(void Function(TodoIncompleteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TodoIncomplete build() => _build();

  _$TodoIncomplete _build() {
    final _$result =
        _$v ??
        _$TodoIncomplete._(
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'TodoIncomplete',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

class _$TodoCompleted extends TodoCompleted {
  @override
  final String id;

  factory _$TodoCompleted([void Function(TodoCompletedBuilder)? updates]) =>
      (TodoCompletedBuilder()..update(updates))._build();

  _$TodoCompleted._({required this.id}) : super._();
  @override
  TodoCompleted rebuild(void Function(TodoCompletedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoCompletedBuilder toBuilder() => TodoCompletedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoCompleted && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'TodoCompleted',
    )..add('id', id)).toString();
  }
}

class TodoCompletedBuilder
    implements Builder<TodoCompleted, TodoCompletedBuilder> {
  _$TodoCompleted? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  TodoCompletedBuilder();

  TodoCompletedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoCompleted other) {
    _$v = other as _$TodoCompleted;
  }

  @override
  void update(void Function(TodoCompletedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TodoCompleted build() => _build();

  _$TodoCompleted _build() {
    final _$result =
        _$v ??
        _$TodoCompleted._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'TodoCompleted', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

class _$TodoRemoved extends TodoRemoved {
  @override
  final String id;

  factory _$TodoRemoved([void Function(TodoRemovedBuilder)? updates]) =>
      (TodoRemovedBuilder()..update(updates))._build();

  _$TodoRemoved._({required this.id}) : super._();
  @override
  TodoRemoved rebuild(void Function(TodoRemovedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoRemovedBuilder toBuilder() => TodoRemovedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoRemoved && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'TodoRemoved',
    )..add('id', id)).toString();
  }
}

class TodoRemovedBuilder implements Builder<TodoRemoved, TodoRemovedBuilder> {
  _$TodoRemoved? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  TodoRemovedBuilder();

  TodoRemovedBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoRemoved other) {
    _$v = other as _$TodoRemoved;
  }

  @override
  void update(void Function(TodoRemovedBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TodoRemoved build() => _build();

  _$TodoRemoved _build() {
    final _$result =
        _$v ??
        _$TodoRemoved._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'TodoRemoved', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
