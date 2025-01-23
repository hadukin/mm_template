import 'package:core/localization_adapter.dart';
import 'package:flutter/material.dart';

class LocalizationProvider<T extends LocalizationAdapter> extends InheritedWidget {
  const LocalizationProvider({
    super.key,
    required this.text,
    required super.child,
  });

  final T text;

  static LocalizationProvider<T> of<T extends LocalizationAdapter>(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LocalizationProvider<T>>()!;
  }

  @override
  bool updateShouldNotify(LocalizationProvider oldWidget) {
    return oldWidget.text != text;
  }
}

extension LocalizationProviderBuildContext on BuildContext {
  LocalizationProvider<T> l<T extends LocalizationAdapter>() {
    return LocalizationProvider.of<T>(this);
  }
}
