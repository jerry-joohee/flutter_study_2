import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'loginScreen_riverpod.g.dart';

// 값을 저장할 "provider"를 생성합니다(여기서는 "Hello world").
// provider를 사용하면 노출된 값을 모의(mock)//재정의(override)할 수 있습니다.
@riverpod
class Loginscreen extends _$Loginscreen {
  @override
  build() => false;

  void method() {
    state = true;
  }
}
