import 'package:rxdart/subjects.dart';

abstract base class _AbstractStore<T> {
  T get initialValue;

  late final _subject = BehaviorSubject<T>.seeded(initialValue);

  T get value => _subject.value;

  void setValue(T value) {
    _subject.add(value);
  }

  Stream<T> get observe => _subject.stream.distinct();
}

abstract base class BaseNullableStore<T extends Object?> extends _AbstractStore<T?> {
  @override
  void setValue(T? value) {
    _subject.add(value);
  }
}

abstract base class BaseStore<T extends Object> extends _AbstractStore<T> {}
