import 'package:flutter/material.dart';

class InheritedInjection extends InheritedWidget {
  final Widget child;

  const InheritedInjection({super.key, required this.child})
      : super(child: child);

  static InheritedInjection? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedInjection>();
  }

  @override
  bool updateShouldNotify(InheritedInjection oldWidget) {
    return true;
  }
}
