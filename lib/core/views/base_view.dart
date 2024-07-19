import 'package:flutter/material.dart';

import '../controllers/base_controller.dart';


class BaseView<T> extends StatelessWidget {
  late final BaseController _controller;

  BaseView({
    super.key,
    required BaseController controller,
  }) {
    _controller = controller;
  }

  T get controller => _controller.child;


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
