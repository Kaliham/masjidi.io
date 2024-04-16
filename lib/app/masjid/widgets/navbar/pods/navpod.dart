import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navpod.g.dart';

@Riverpod(keepAlive: true)
class NavPod extends _$NavPod {
  @override
  NavState build() {
    return NavState.initial();
  }

  void setIndex(int index) {
    state = state.copyWith(index: index);
  }

  void toggleNav() {
    state = state.copyWith(isOpen: !state.isOpen);
  }

  void setNav(bool isOpen) {
    state = state.copyWith(isOpen: isOpen);
  }
}

class NavState {
  final int index;
  final bool isOpen;
  NavState({required this.index, required this.isOpen});

  factory NavState.initial() {
    return NavState(index: 0, isOpen: false);
  }

  NavState copyWith({int? index, bool? isOpen}) {
    return NavState(
      index: index ?? this.index,
      isOpen: isOpen ?? this.isOpen,
    );
  }
}
