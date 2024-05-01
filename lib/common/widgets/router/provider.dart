import 'package:masjidi_io/common/shared/routes.dart';
import 'package:masjidi_io/common/utils/stack.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart'; // This will be generated by build_runner

@Riverpod(keepAlive: true)
class Router extends _$Router {
  final Stack<RouterState> _stack = Stack<RouterState>();

  @override
  RouterState build() {
    _stack.push(RouterState(route: 'home'));
    return _stack.peek;
  }

  void push(String route, dynamic data) {
    if (!Routes.all.contains(route)) {
      throw Exception('Route $route not found, please add it to Routes.all!');
    }
    _stack.push(RouterState(route: route, data: data));
    state = _stack.peek;
  }

  void pop() {
    _stack.pop();
    state = _stack.peek;
  }
}

class RouterState {
  final String route;
  final dynamic data;
  RouterState({required this.route, this.data});
  RouterState copyWith({String? route, dynamic data}) {
    return RouterState(
      route: route ?? this.route,
      data: data ?? this.data,
    );
  }
}
