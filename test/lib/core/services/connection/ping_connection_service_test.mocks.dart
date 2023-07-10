// Mocks generated by Mockito 5.4.2 from annotations
// in testes_clean/test/lib/core/services/connection/ping_connection_service_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dart_ping/src/models/ping_data.dart' as _i5;
import 'package:dart_ping/src/models/ping_parser.dart' as _i2;
import 'package:dart_ping/src/ping_interface.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakePingParser_0 extends _i1.SmartFake implements _i2.PingParser {
  _FakePingParser_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Ping].
///
/// See the documentation for Mockito's code generation for more information.
class MockPing extends _i1.Mock implements _i3.Ping {
  @override
  _i2.PingParser get parser => (super.noSuchMethod(
        Invocation.getter(#parser),
        returnValue: _FakePingParser_0(
          this,
          Invocation.getter(#parser),
        ),
        returnValueForMissingStub: _FakePingParser_0(
          this,
          Invocation.getter(#parser),
        ),
      ) as _i2.PingParser);
  @override
  set parser(_i2.PingParser? _parser) => super.noSuchMethod(
        Invocation.setter(
          #parser,
          _parser,
        ),
        returnValueForMissingStub: null,
      );
  @override
  String get command => (super.noSuchMethod(
        Invocation.getter(#command),
        returnValue: '',
        returnValueForMissingStub: '',
      ) as String);
  @override
  _i4.Stream<_i5.PingData> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i4.Stream<_i5.PingData>.empty(),
        returnValueForMissingStub: _i4.Stream<_i5.PingData>.empty(),
      ) as _i4.Stream<_i5.PingData>);
  @override
  _i4.Future<bool> stop() => (super.noSuchMethod(
        Invocation.method(
          #stop,
          [],
        ),
        returnValue: _i4.Future<bool>.value(false),
        returnValueForMissingStub: _i4.Future<bool>.value(false),
      ) as _i4.Future<bool>);
}
