// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId) loadMessage,
    required TResult Function(String conversationId, String content)
        sendMessage,
    required TResult Function(Map<String, dynamic> message) receiveMessage,
    required TResult Function(String conversationId) loadDailyQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? loadMessage,
    TResult? Function(String conversationId, String content)? sendMessage,
    TResult? Function(Map<String, dynamic> message)? receiveMessage,
    TResult? Function(String conversationId)? loadDailyQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? loadMessage,
    TResult Function(String conversationId, String content)? sendMessage,
    TResult Function(Map<String, dynamic> message)? receiveMessage,
    TResult Function(String conversationId)? loadDailyQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMessage value) loadMessage,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ReceiveMessage value) receiveMessage,
    required TResult Function(_LoadDailyQuestion value) loadDailyQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMessage value)? loadMessage,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ReceiveMessage value)? receiveMessage,
    TResult? Function(_LoadDailyQuestion value)? loadDailyQuestion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMessage value)? loadMessage,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ReceiveMessage value)? receiveMessage,
    TResult Function(_LoadDailyQuestion value)? loadDailyQuestion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEventCopyWith<$Res> {
  factory $MessageEventCopyWith(
          MessageEvent value, $Res Function(MessageEvent) then) =
      _$MessageEventCopyWithImpl<$Res, MessageEvent>;
}

/// @nodoc
class _$MessageEventCopyWithImpl<$Res, $Val extends MessageEvent>
    implements $MessageEventCopyWith<$Res> {
  _$MessageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadMessageImplCopyWith<$Res> {
  factory _$$LoadMessageImplCopyWith(
          _$LoadMessageImpl value, $Res Function(_$LoadMessageImpl) then) =
      __$$LoadMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$LoadMessageImplCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$LoadMessageImpl>
    implements _$$LoadMessageImplCopyWith<$Res> {
  __$$LoadMessageImplCopyWithImpl(
      _$LoadMessageImpl _value, $Res Function(_$LoadMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
  }) {
    return _then(_$LoadMessageImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadMessageImpl implements _LoadMessage {
  const _$LoadMessageImpl({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'MessageEvent.loadMessage(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMessageImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMessageImplCopyWith<_$LoadMessageImpl> get copyWith =>
      __$$LoadMessageImplCopyWithImpl<_$LoadMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId) loadMessage,
    required TResult Function(String conversationId, String content)
        sendMessage,
    required TResult Function(Map<String, dynamic> message) receiveMessage,
    required TResult Function(String conversationId) loadDailyQuestion,
  }) {
    return loadMessage(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? loadMessage,
    TResult? Function(String conversationId, String content)? sendMessage,
    TResult? Function(Map<String, dynamic> message)? receiveMessage,
    TResult? Function(String conversationId)? loadDailyQuestion,
  }) {
    return loadMessage?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? loadMessage,
    TResult Function(String conversationId, String content)? sendMessage,
    TResult Function(Map<String, dynamic> message)? receiveMessage,
    TResult Function(String conversationId)? loadDailyQuestion,
    required TResult orElse(),
  }) {
    if (loadMessage != null) {
      return loadMessage(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMessage value) loadMessage,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ReceiveMessage value) receiveMessage,
    required TResult Function(_LoadDailyQuestion value) loadDailyQuestion,
  }) {
    return loadMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMessage value)? loadMessage,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ReceiveMessage value)? receiveMessage,
    TResult? Function(_LoadDailyQuestion value)? loadDailyQuestion,
  }) {
    return loadMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMessage value)? loadMessage,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ReceiveMessage value)? receiveMessage,
    TResult Function(_LoadDailyQuestion value)? loadDailyQuestion,
    required TResult orElse(),
  }) {
    if (loadMessage != null) {
      return loadMessage(this);
    }
    return orElse();
  }
}

abstract class _LoadMessage implements MessageEvent {
  const factory _LoadMessage({required final String conversationId}) =
      _$LoadMessageImpl;

  String get conversationId;

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMessageImplCopyWith<_$LoadMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendMessageImplCopyWith<$Res> {
  factory _$$SendMessageImplCopyWith(
          _$SendMessageImpl value, $Res Function(_$SendMessageImpl) then) =
      __$$SendMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId, String content});
}

/// @nodoc
class __$$SendMessageImplCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$SendMessageImpl>
    implements _$$SendMessageImplCopyWith<$Res> {
  __$$SendMessageImplCopyWithImpl(
      _$SendMessageImpl _value, $Res Function(_$SendMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? content = null,
  }) {
    return _then(_$SendMessageImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessageImpl implements _SendMessage {
  const _$SendMessageImpl(
      {required this.conversationId, required this.content});

  @override
  final String conversationId;
  @override
  final String content;

  @override
  String toString() {
    return 'MessageEvent.sendMessage(conversationId: $conversationId, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId, content);

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      __$$SendMessageImplCopyWithImpl<_$SendMessageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId) loadMessage,
    required TResult Function(String conversationId, String content)
        sendMessage,
    required TResult Function(Map<String, dynamic> message) receiveMessage,
    required TResult Function(String conversationId) loadDailyQuestion,
  }) {
    return sendMessage(conversationId, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? loadMessage,
    TResult? Function(String conversationId, String content)? sendMessage,
    TResult? Function(Map<String, dynamic> message)? receiveMessage,
    TResult? Function(String conversationId)? loadDailyQuestion,
  }) {
    return sendMessage?.call(conversationId, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? loadMessage,
    TResult Function(String conversationId, String content)? sendMessage,
    TResult Function(Map<String, dynamic> message)? receiveMessage,
    TResult Function(String conversationId)? loadDailyQuestion,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(conversationId, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMessage value) loadMessage,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ReceiveMessage value) receiveMessage,
    required TResult Function(_LoadDailyQuestion value) loadDailyQuestion,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMessage value)? loadMessage,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ReceiveMessage value)? receiveMessage,
    TResult? Function(_LoadDailyQuestion value)? loadDailyQuestion,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMessage value)? loadMessage,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ReceiveMessage value)? receiveMessage,
    TResult Function(_LoadDailyQuestion value)? loadDailyQuestion,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements MessageEvent {
  const factory _SendMessage(
      {required final String conversationId,
      required final String content}) = _$SendMessageImpl;

  String get conversationId;
  String get content;

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageImplCopyWith<_$SendMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiveMessageImplCopyWith<$Res> {
  factory _$$ReceiveMessageImplCopyWith(_$ReceiveMessageImpl value,
          $Res Function(_$ReceiveMessageImpl) then) =
      __$$ReceiveMessageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> message});
}

/// @nodoc
class __$$ReceiveMessageImplCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$ReceiveMessageImpl>
    implements _$$ReceiveMessageImplCopyWith<$Res> {
  __$$ReceiveMessageImplCopyWithImpl(
      _$ReceiveMessageImpl _value, $Res Function(_$ReceiveMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ReceiveMessageImpl(
      message: null == message
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$ReceiveMessageImpl implements _ReceiveMessage {
  const _$ReceiveMessageImpl({required final Map<String, dynamic> message})
      : _message = message;

  final Map<String, dynamic> _message;
  @override
  Map<String, dynamic> get message {
    if (_message is EqualUnmodifiableMapView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_message);
  }

  @override
  String toString() {
    return 'MessageEvent.receiveMessage(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiveMessageImpl &&
            const DeepCollectionEquality().equals(other._message, _message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_message));

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiveMessageImplCopyWith<_$ReceiveMessageImpl> get copyWith =>
      __$$ReceiveMessageImplCopyWithImpl<_$ReceiveMessageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId) loadMessage,
    required TResult Function(String conversationId, String content)
        sendMessage,
    required TResult Function(Map<String, dynamic> message) receiveMessage,
    required TResult Function(String conversationId) loadDailyQuestion,
  }) {
    return receiveMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? loadMessage,
    TResult? Function(String conversationId, String content)? sendMessage,
    TResult? Function(Map<String, dynamic> message)? receiveMessage,
    TResult? Function(String conversationId)? loadDailyQuestion,
  }) {
    return receiveMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? loadMessage,
    TResult Function(String conversationId, String content)? sendMessage,
    TResult Function(Map<String, dynamic> message)? receiveMessage,
    TResult Function(String conversationId)? loadDailyQuestion,
    required TResult orElse(),
  }) {
    if (receiveMessage != null) {
      return receiveMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMessage value) loadMessage,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ReceiveMessage value) receiveMessage,
    required TResult Function(_LoadDailyQuestion value) loadDailyQuestion,
  }) {
    return receiveMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMessage value)? loadMessage,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ReceiveMessage value)? receiveMessage,
    TResult? Function(_LoadDailyQuestion value)? loadDailyQuestion,
  }) {
    return receiveMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMessage value)? loadMessage,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ReceiveMessage value)? receiveMessage,
    TResult Function(_LoadDailyQuestion value)? loadDailyQuestion,
    required TResult orElse(),
  }) {
    if (receiveMessage != null) {
      return receiveMessage(this);
    }
    return orElse();
  }
}

abstract class _ReceiveMessage implements MessageEvent {
  const factory _ReceiveMessage({required final Map<String, dynamic> message}) =
      _$ReceiveMessageImpl;

  Map<String, dynamic> get message;

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiveMessageImplCopyWith<_$ReceiveMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadDailyQuestionImplCopyWith<$Res> {
  factory _$$LoadDailyQuestionImplCopyWith(_$LoadDailyQuestionImpl value,
          $Res Function(_$LoadDailyQuestionImpl) then) =
      __$$LoadDailyQuestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$LoadDailyQuestionImplCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res, _$LoadDailyQuestionImpl>
    implements _$$LoadDailyQuestionImplCopyWith<$Res> {
  __$$LoadDailyQuestionImplCopyWithImpl(_$LoadDailyQuestionImpl _value,
      $Res Function(_$LoadDailyQuestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
  }) {
    return _then(_$LoadDailyQuestionImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadDailyQuestionImpl implements _LoadDailyQuestion {
  const _$LoadDailyQuestionImpl({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'MessageEvent.loadDailyQuestion(conversationId: $conversationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDailyQuestionImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadDailyQuestionImplCopyWith<_$LoadDailyQuestionImpl> get copyWith =>
      __$$LoadDailyQuestionImplCopyWithImpl<_$LoadDailyQuestionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId) loadMessage,
    required TResult Function(String conversationId, String content)
        sendMessage,
    required TResult Function(Map<String, dynamic> message) receiveMessage,
    required TResult Function(String conversationId) loadDailyQuestion,
  }) {
    return loadDailyQuestion(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? loadMessage,
    TResult? Function(String conversationId, String content)? sendMessage,
    TResult? Function(Map<String, dynamic> message)? receiveMessage,
    TResult? Function(String conversationId)? loadDailyQuestion,
  }) {
    return loadDailyQuestion?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? loadMessage,
    TResult Function(String conversationId, String content)? sendMessage,
    TResult Function(Map<String, dynamic> message)? receiveMessage,
    TResult Function(String conversationId)? loadDailyQuestion,
    required TResult orElse(),
  }) {
    if (loadDailyQuestion != null) {
      return loadDailyQuestion(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadMessage value) loadMessage,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ReceiveMessage value) receiveMessage,
    required TResult Function(_LoadDailyQuestion value) loadDailyQuestion,
  }) {
    return loadDailyQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadMessage value)? loadMessage,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_ReceiveMessage value)? receiveMessage,
    TResult? Function(_LoadDailyQuestion value)? loadDailyQuestion,
  }) {
    return loadDailyQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadMessage value)? loadMessage,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ReceiveMessage value)? receiveMessage,
    TResult Function(_LoadDailyQuestion value)? loadDailyQuestion,
    required TResult orElse(),
  }) {
    if (loadDailyQuestion != null) {
      return loadDailyQuestion(this);
    }
    return orElse();
  }
}

abstract class _LoadDailyQuestion implements MessageEvent {
  const factory _LoadDailyQuestion({required final String conversationId}) =
      _$LoadDailyQuestionImpl;

  String get conversationId;

  /// Create a copy of MessageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadDailyQuestionImplCopyWith<_$LoadDailyQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageEntity> messages) loaded,
    required TResult Function(String error) error,
    required TResult Function(DailyQuestionEntity dailyQuestion)
        dailyQuestionLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageEntity> messages)? loaded,
    TResult? Function(String error)? error,
    TResult? Function(DailyQuestionEntity dailyQuestion)? dailyQuestionLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageEntity> messages)? loaded,
    TResult Function(String error)? error,
    TResult Function(DailyQuestionEntity dailyQuestion)? dailyQuestionLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInitial value) initial,
    required TResult Function(MessageLoading value) loading,
    required TResult Function(MessageLoaded value) loaded,
    required TResult Function(MessageError value) error,
    required TResult Function(DailyQuestionLoaded value) dailyQuestionLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageInitial value)? initial,
    TResult? Function(MessageLoading value)? loading,
    TResult? Function(MessageLoaded value)? loaded,
    TResult? Function(MessageError value)? error,
    TResult? Function(DailyQuestionLoaded value)? dailyQuestionLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInitial value)? initial,
    TResult Function(MessageLoading value)? loading,
    TResult Function(MessageLoaded value)? loaded,
    TResult Function(MessageError value)? error,
    TResult Function(DailyQuestionLoaded value)? dailyQuestionLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res, MessageState>;
}

/// @nodoc
class _$MessageStateCopyWithImpl<$Res, $Val extends MessageState>
    implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MessageInitialImplCopyWith<$Res> {
  factory _$$MessageInitialImplCopyWith(_$MessageInitialImpl value,
          $Res Function(_$MessageInitialImpl) then) =
      __$$MessageInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageInitialImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageInitialImpl>
    implements _$$MessageInitialImplCopyWith<$Res> {
  __$$MessageInitialImplCopyWithImpl(
      _$MessageInitialImpl _value, $Res Function(_$MessageInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MessageInitialImpl implements MessageInitial {
  const _$MessageInitialImpl();

  @override
  String toString() {
    return 'MessageState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MessageInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageEntity> messages) loaded,
    required TResult Function(String error) error,
    required TResult Function(DailyQuestionEntity dailyQuestion)
        dailyQuestionLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageEntity> messages)? loaded,
    TResult? Function(String error)? error,
    TResult? Function(DailyQuestionEntity dailyQuestion)? dailyQuestionLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageEntity> messages)? loaded,
    TResult Function(String error)? error,
    TResult Function(DailyQuestionEntity dailyQuestion)? dailyQuestionLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInitial value) initial,
    required TResult Function(MessageLoading value) loading,
    required TResult Function(MessageLoaded value) loaded,
    required TResult Function(MessageError value) error,
    required TResult Function(DailyQuestionLoaded value) dailyQuestionLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageInitial value)? initial,
    TResult? Function(MessageLoading value)? loading,
    TResult? Function(MessageLoaded value)? loaded,
    TResult? Function(MessageError value)? error,
    TResult? Function(DailyQuestionLoaded value)? dailyQuestionLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInitial value)? initial,
    TResult Function(MessageLoading value)? loading,
    TResult Function(MessageLoaded value)? loaded,
    TResult Function(MessageError value)? error,
    TResult Function(DailyQuestionLoaded value)? dailyQuestionLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MessageInitial implements MessageState {
  const factory MessageInitial() = _$MessageInitialImpl;
}

/// @nodoc
abstract class _$$MessageLoadingImplCopyWith<$Res> {
  factory _$$MessageLoadingImplCopyWith(_$MessageLoadingImpl value,
          $Res Function(_$MessageLoadingImpl) then) =
      __$$MessageLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageLoadingImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageLoadingImpl>
    implements _$$MessageLoadingImplCopyWith<$Res> {
  __$$MessageLoadingImplCopyWithImpl(
      _$MessageLoadingImpl _value, $Res Function(_$MessageLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MessageLoadingImpl implements MessageLoading {
  const _$MessageLoadingImpl();

  @override
  String toString() {
    return 'MessageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MessageLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageEntity> messages) loaded,
    required TResult Function(String error) error,
    required TResult Function(DailyQuestionEntity dailyQuestion)
        dailyQuestionLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageEntity> messages)? loaded,
    TResult? Function(String error)? error,
    TResult? Function(DailyQuestionEntity dailyQuestion)? dailyQuestionLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageEntity> messages)? loaded,
    TResult Function(String error)? error,
    TResult Function(DailyQuestionEntity dailyQuestion)? dailyQuestionLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInitial value) initial,
    required TResult Function(MessageLoading value) loading,
    required TResult Function(MessageLoaded value) loaded,
    required TResult Function(MessageError value) error,
    required TResult Function(DailyQuestionLoaded value) dailyQuestionLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageInitial value)? initial,
    TResult? Function(MessageLoading value)? loading,
    TResult? Function(MessageLoaded value)? loaded,
    TResult? Function(MessageError value)? error,
    TResult? Function(DailyQuestionLoaded value)? dailyQuestionLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInitial value)? initial,
    TResult Function(MessageLoading value)? loading,
    TResult Function(MessageLoaded value)? loaded,
    TResult Function(MessageError value)? error,
    TResult Function(DailyQuestionLoaded value)? dailyQuestionLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MessageLoading implements MessageState {
  const factory MessageLoading() = _$MessageLoadingImpl;
}

/// @nodoc
abstract class _$$MessageLoadedImplCopyWith<$Res> {
  factory _$$MessageLoadedImplCopyWith(
          _$MessageLoadedImpl value, $Res Function(_$MessageLoadedImpl) then) =
      __$$MessageLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MessageEntity> messages});
}

/// @nodoc
class __$$MessageLoadedImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageLoadedImpl>
    implements _$$MessageLoadedImplCopyWith<$Res> {
  __$$MessageLoadedImplCopyWithImpl(
      _$MessageLoadedImpl _value, $Res Function(_$MessageLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$MessageLoadedImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageEntity>,
    ));
  }
}

/// @nodoc

class _$MessageLoadedImpl implements MessageLoaded {
  const _$MessageLoadedImpl({required final List<MessageEntity> messages})
      : _messages = messages;

  final List<MessageEntity> _messages;
  @override
  List<MessageEntity> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'MessageState.loaded(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageLoadedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageLoadedImplCopyWith<_$MessageLoadedImpl> get copyWith =>
      __$$MessageLoadedImplCopyWithImpl<_$MessageLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageEntity> messages) loaded,
    required TResult Function(String error) error,
    required TResult Function(DailyQuestionEntity dailyQuestion)
        dailyQuestionLoaded,
  }) {
    return loaded(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageEntity> messages)? loaded,
    TResult? Function(String error)? error,
    TResult? Function(DailyQuestionEntity dailyQuestion)? dailyQuestionLoaded,
  }) {
    return loaded?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageEntity> messages)? loaded,
    TResult Function(String error)? error,
    TResult Function(DailyQuestionEntity dailyQuestion)? dailyQuestionLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInitial value) initial,
    required TResult Function(MessageLoading value) loading,
    required TResult Function(MessageLoaded value) loaded,
    required TResult Function(MessageError value) error,
    required TResult Function(DailyQuestionLoaded value) dailyQuestionLoaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageInitial value)? initial,
    TResult? Function(MessageLoading value)? loading,
    TResult? Function(MessageLoaded value)? loaded,
    TResult? Function(MessageError value)? error,
    TResult? Function(DailyQuestionLoaded value)? dailyQuestionLoaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInitial value)? initial,
    TResult Function(MessageLoading value)? loading,
    TResult Function(MessageLoaded value)? loaded,
    TResult Function(MessageError value)? error,
    TResult Function(DailyQuestionLoaded value)? dailyQuestionLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MessageLoaded implements MessageState {
  const factory MessageLoaded({required final List<MessageEntity> messages}) =
      _$MessageLoadedImpl;

  List<MessageEntity> get messages;

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageLoadedImplCopyWith<_$MessageLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageErrorImplCopyWith<$Res> {
  factory _$$MessageErrorImplCopyWith(
          _$MessageErrorImpl value, $Res Function(_$MessageErrorImpl) then) =
      __$$MessageErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$MessageErrorImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$MessageErrorImpl>
    implements _$$MessageErrorImplCopyWith<$Res> {
  __$$MessageErrorImplCopyWithImpl(
      _$MessageErrorImpl _value, $Res Function(_$MessageErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$MessageErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageErrorImpl implements MessageError {
  const _$MessageErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MessageState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageErrorImplCopyWith<_$MessageErrorImpl> get copyWith =>
      __$$MessageErrorImplCopyWithImpl<_$MessageErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageEntity> messages) loaded,
    required TResult Function(String error) error,
    required TResult Function(DailyQuestionEntity dailyQuestion)
        dailyQuestionLoaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageEntity> messages)? loaded,
    TResult? Function(String error)? error,
    TResult? Function(DailyQuestionEntity dailyQuestion)? dailyQuestionLoaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageEntity> messages)? loaded,
    TResult Function(String error)? error,
    TResult Function(DailyQuestionEntity dailyQuestion)? dailyQuestionLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInitial value) initial,
    required TResult Function(MessageLoading value) loading,
    required TResult Function(MessageLoaded value) loaded,
    required TResult Function(MessageError value) error,
    required TResult Function(DailyQuestionLoaded value) dailyQuestionLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageInitial value)? initial,
    TResult? Function(MessageLoading value)? loading,
    TResult? Function(MessageLoaded value)? loaded,
    TResult? Function(MessageError value)? error,
    TResult? Function(DailyQuestionLoaded value)? dailyQuestionLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInitial value)? initial,
    TResult Function(MessageLoading value)? loading,
    TResult Function(MessageLoaded value)? loaded,
    TResult Function(MessageError value)? error,
    TResult Function(DailyQuestionLoaded value)? dailyQuestionLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MessageError implements MessageState {
  const factory MessageError({required final String error}) =
      _$MessageErrorImpl;

  String get error;

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageErrorImplCopyWith<_$MessageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DailyQuestionLoadedImplCopyWith<$Res> {
  factory _$$DailyQuestionLoadedImplCopyWith(_$DailyQuestionLoadedImpl value,
          $Res Function(_$DailyQuestionLoadedImpl) then) =
      __$$DailyQuestionLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DailyQuestionEntity dailyQuestion});
}

/// @nodoc
class __$$DailyQuestionLoadedImplCopyWithImpl<$Res>
    extends _$MessageStateCopyWithImpl<$Res, _$DailyQuestionLoadedImpl>
    implements _$$DailyQuestionLoadedImplCopyWith<$Res> {
  __$$DailyQuestionLoadedImplCopyWithImpl(_$DailyQuestionLoadedImpl _value,
      $Res Function(_$DailyQuestionLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dailyQuestion = null,
  }) {
    return _then(_$DailyQuestionLoadedImpl(
      dailyQuestion: null == dailyQuestion
          ? _value.dailyQuestion
          : dailyQuestion // ignore: cast_nullable_to_non_nullable
              as DailyQuestionEntity,
    ));
  }
}

/// @nodoc

class _$DailyQuestionLoadedImpl implements DailyQuestionLoaded {
  const _$DailyQuestionLoadedImpl({required this.dailyQuestion});

  @override
  final DailyQuestionEntity dailyQuestion;

  @override
  String toString() {
    return 'MessageState.dailyQuestionLoaded(dailyQuestion: $dailyQuestion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyQuestionLoadedImpl &&
            (identical(other.dailyQuestion, dailyQuestion) ||
                other.dailyQuestion == dailyQuestion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dailyQuestion);

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyQuestionLoadedImplCopyWith<_$DailyQuestionLoadedImpl> get copyWith =>
      __$$DailyQuestionLoadedImplCopyWithImpl<_$DailyQuestionLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<MessageEntity> messages) loaded,
    required TResult Function(String error) error,
    required TResult Function(DailyQuestionEntity dailyQuestion)
        dailyQuestionLoaded,
  }) {
    return dailyQuestionLoaded(dailyQuestion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<MessageEntity> messages)? loaded,
    TResult? Function(String error)? error,
    TResult? Function(DailyQuestionEntity dailyQuestion)? dailyQuestionLoaded,
  }) {
    return dailyQuestionLoaded?.call(dailyQuestion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<MessageEntity> messages)? loaded,
    TResult Function(String error)? error,
    TResult Function(DailyQuestionEntity dailyQuestion)? dailyQuestionLoaded,
    required TResult orElse(),
  }) {
    if (dailyQuestionLoaded != null) {
      return dailyQuestionLoaded(dailyQuestion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageInitial value) initial,
    required TResult Function(MessageLoading value) loading,
    required TResult Function(MessageLoaded value) loaded,
    required TResult Function(MessageError value) error,
    required TResult Function(DailyQuestionLoaded value) dailyQuestionLoaded,
  }) {
    return dailyQuestionLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageInitial value)? initial,
    TResult? Function(MessageLoading value)? loading,
    TResult? Function(MessageLoaded value)? loaded,
    TResult? Function(MessageError value)? error,
    TResult? Function(DailyQuestionLoaded value)? dailyQuestionLoaded,
  }) {
    return dailyQuestionLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageInitial value)? initial,
    TResult Function(MessageLoading value)? loading,
    TResult Function(MessageLoaded value)? loaded,
    TResult Function(MessageError value)? error,
    TResult Function(DailyQuestionLoaded value)? dailyQuestionLoaded,
    required TResult orElse(),
  }) {
    if (dailyQuestionLoaded != null) {
      return dailyQuestionLoaded(this);
    }
    return orElse();
  }
}

abstract class DailyQuestionLoaded implements MessageState {
  const factory DailyQuestionLoaded(
          {required final DailyQuestionEntity dailyQuestion}) =
      _$DailyQuestionLoadedImpl;

  DailyQuestionEntity get dailyQuestion;

  /// Create a copy of MessageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyQuestionLoadedImplCopyWith<_$DailyQuestionLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
