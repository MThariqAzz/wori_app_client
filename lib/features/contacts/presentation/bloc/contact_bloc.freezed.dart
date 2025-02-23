// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) addContact,
    required TResult Function() fetchContacts,
    required TResult Function(String contactId, String contactName)
        checkOrCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? addContact,
    TResult? Function()? fetchContacts,
    TResult? Function(String contactId, String contactName)? checkOrCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? addContact,
    TResult Function()? fetchContacts,
    TResult Function(String contactId, String contactName)? checkOrCreate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Addcontact value) addContact,
    required TResult Function(_Fetchcontacts value) fetchContacts,
    required TResult Function(_CheckOrCreate value) checkOrCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Addcontact value)? addContact,
    TResult? Function(_Fetchcontacts value)? fetchContacts,
    TResult? Function(_CheckOrCreate value)? checkOrCreate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Addcontact value)? addContact,
    TResult Function(_Fetchcontacts value)? fetchContacts,
    TResult Function(_CheckOrCreate value)? checkOrCreate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactEventCopyWith<$Res> {
  factory $ContactEventCopyWith(
          ContactEvent value, $Res Function(ContactEvent) then) =
      _$ContactEventCopyWithImpl<$Res, ContactEvent>;
}

/// @nodoc
class _$ContactEventCopyWithImpl<$Res, $Val extends ContactEvent>
    implements $ContactEventCopyWith<$Res> {
  _$ContactEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddcontactImplCopyWith<$Res> {
  factory _$$AddcontactImplCopyWith(
          _$AddcontactImpl value, $Res Function(_$AddcontactImpl) then) =
      __$$AddcontactImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$AddcontactImplCopyWithImpl<$Res>
    extends _$ContactEventCopyWithImpl<$Res, _$AddcontactImpl>
    implements _$$AddcontactImplCopyWith<$Res> {
  __$$AddcontactImplCopyWithImpl(
      _$AddcontactImpl _value, $Res Function(_$AddcontactImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$AddcontactImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddcontactImpl implements _Addcontact {
  const _$AddcontactImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ContactEvent.addContact(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddcontactImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddcontactImplCopyWith<_$AddcontactImpl> get copyWith =>
      __$$AddcontactImplCopyWithImpl<_$AddcontactImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) addContact,
    required TResult Function() fetchContacts,
    required TResult Function(String contactId, String contactName)
        checkOrCreate,
  }) {
    return addContact(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? addContact,
    TResult? Function()? fetchContacts,
    TResult? Function(String contactId, String contactName)? checkOrCreate,
  }) {
    return addContact?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? addContact,
    TResult Function()? fetchContacts,
    TResult Function(String contactId, String contactName)? checkOrCreate,
    required TResult orElse(),
  }) {
    if (addContact != null) {
      return addContact(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Addcontact value) addContact,
    required TResult Function(_Fetchcontacts value) fetchContacts,
    required TResult Function(_CheckOrCreate value) checkOrCreate,
  }) {
    return addContact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Addcontact value)? addContact,
    TResult? Function(_Fetchcontacts value)? fetchContacts,
    TResult? Function(_CheckOrCreate value)? checkOrCreate,
  }) {
    return addContact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Addcontact value)? addContact,
    TResult Function(_Fetchcontacts value)? fetchContacts,
    TResult Function(_CheckOrCreate value)? checkOrCreate,
    required TResult orElse(),
  }) {
    if (addContact != null) {
      return addContact(this);
    }
    return orElse();
  }
}

abstract class _Addcontact implements ContactEvent {
  const factory _Addcontact({required final String email}) = _$AddcontactImpl;

  String get email;

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddcontactImplCopyWith<_$AddcontactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchcontactsImplCopyWith<$Res> {
  factory _$$FetchcontactsImplCopyWith(
          _$FetchcontactsImpl value, $Res Function(_$FetchcontactsImpl) then) =
      __$$FetchcontactsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchcontactsImplCopyWithImpl<$Res>
    extends _$ContactEventCopyWithImpl<$Res, _$FetchcontactsImpl>
    implements _$$FetchcontactsImplCopyWith<$Res> {
  __$$FetchcontactsImplCopyWithImpl(
      _$FetchcontactsImpl _value, $Res Function(_$FetchcontactsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchcontactsImpl implements _Fetchcontacts {
  const _$FetchcontactsImpl();

  @override
  String toString() {
    return 'ContactEvent.fetchContacts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchcontactsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) addContact,
    required TResult Function() fetchContacts,
    required TResult Function(String contactId, String contactName)
        checkOrCreate,
  }) {
    return fetchContacts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? addContact,
    TResult? Function()? fetchContacts,
    TResult? Function(String contactId, String contactName)? checkOrCreate,
  }) {
    return fetchContacts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? addContact,
    TResult Function()? fetchContacts,
    TResult Function(String contactId, String contactName)? checkOrCreate,
    required TResult orElse(),
  }) {
    if (fetchContacts != null) {
      return fetchContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Addcontact value) addContact,
    required TResult Function(_Fetchcontacts value) fetchContacts,
    required TResult Function(_CheckOrCreate value) checkOrCreate,
  }) {
    return fetchContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Addcontact value)? addContact,
    TResult? Function(_Fetchcontacts value)? fetchContacts,
    TResult? Function(_CheckOrCreate value)? checkOrCreate,
  }) {
    return fetchContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Addcontact value)? addContact,
    TResult Function(_Fetchcontacts value)? fetchContacts,
    TResult Function(_CheckOrCreate value)? checkOrCreate,
    required TResult orElse(),
  }) {
    if (fetchContacts != null) {
      return fetchContacts(this);
    }
    return orElse();
  }
}

abstract class _Fetchcontacts implements ContactEvent {
  const factory _Fetchcontacts() = _$FetchcontactsImpl;
}

/// @nodoc
abstract class _$$CheckOrCreateImplCopyWith<$Res> {
  factory _$$CheckOrCreateImplCopyWith(
          _$CheckOrCreateImpl value, $Res Function(_$CheckOrCreateImpl) then) =
      __$$CheckOrCreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String contactId, String contactName});
}

/// @nodoc
class __$$CheckOrCreateImplCopyWithImpl<$Res>
    extends _$ContactEventCopyWithImpl<$Res, _$CheckOrCreateImpl>
    implements _$$CheckOrCreateImplCopyWith<$Res> {
  __$$CheckOrCreateImplCopyWithImpl(
      _$CheckOrCreateImpl _value, $Res Function(_$CheckOrCreateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactId = null,
    Object? contactName = null,
  }) {
    return _then(_$CheckOrCreateImpl(
      contactId: null == contactId
          ? _value.contactId
          : contactId // ignore: cast_nullable_to_non_nullable
              as String,
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckOrCreateImpl implements _CheckOrCreate {
  const _$CheckOrCreateImpl(
      {required this.contactId, required this.contactName});

  @override
  final String contactId;
  @override
  final String contactName;

  @override
  String toString() {
    return 'ContactEvent.checkOrCreate(contactId: $contactId, contactName: $contactName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckOrCreateImpl &&
            (identical(other.contactId, contactId) ||
                other.contactId == contactId) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactId, contactName);

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckOrCreateImplCopyWith<_$CheckOrCreateImpl> get copyWith =>
      __$$CheckOrCreateImplCopyWithImpl<_$CheckOrCreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) addContact,
    required TResult Function() fetchContacts,
    required TResult Function(String contactId, String contactName)
        checkOrCreate,
  }) {
    return checkOrCreate(contactId, contactName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? addContact,
    TResult? Function()? fetchContacts,
    TResult? Function(String contactId, String contactName)? checkOrCreate,
  }) {
    return checkOrCreate?.call(contactId, contactName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? addContact,
    TResult Function()? fetchContacts,
    TResult Function(String contactId, String contactName)? checkOrCreate,
    required TResult orElse(),
  }) {
    if (checkOrCreate != null) {
      return checkOrCreate(contactId, contactName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Addcontact value) addContact,
    required TResult Function(_Fetchcontacts value) fetchContacts,
    required TResult Function(_CheckOrCreate value) checkOrCreate,
  }) {
    return checkOrCreate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Addcontact value)? addContact,
    TResult? Function(_Fetchcontacts value)? fetchContacts,
    TResult? Function(_CheckOrCreate value)? checkOrCreate,
  }) {
    return checkOrCreate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Addcontact value)? addContact,
    TResult Function(_Fetchcontacts value)? fetchContacts,
    TResult Function(_CheckOrCreate value)? checkOrCreate,
    required TResult orElse(),
  }) {
    if (checkOrCreate != null) {
      return checkOrCreate(this);
    }
    return orElse();
  }
}

abstract class _CheckOrCreate implements ContactEvent {
  const factory _CheckOrCreate(
      {required final String contactId,
      required final String contactName}) = _$CheckOrCreateImpl;

  String get contactId;
  String get contactName;

  /// Create a copy of ContactEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckOrCreateImplCopyWith<_$CheckOrCreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContactState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ContactEntity> contacts) loaded,
    required TResult Function(String message) error,
    required TResult Function() added,
    required TResult Function(String conversationId, String contactName)
        conversationReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ContactEntity> contacts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? added,
    TResult? Function(String conversationId, String contactName)?
        conversationReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ContactEntity> contacts)? loaded,
    TResult Function(String message)? error,
    TResult Function()? added,
    TResult Function(String conversationId, String contactName)?
        conversationReady,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Added value) added,
    required TResult Function(ConversationReady value) conversationReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Added value)? added,
    TResult? Function(ConversationReady value)? conversationReady,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Added value)? added,
    TResult Function(ConversationReady value)? conversationReady,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactStateCopyWith<$Res> {
  factory $ContactStateCopyWith(
          ContactState value, $Res Function(ContactState) then) =
      _$ContactStateCopyWithImpl<$Res, ContactState>;
}

/// @nodoc
class _$ContactStateCopyWithImpl<$Res, $Val extends ContactState>
    implements $ContactStateCopyWith<$Res> {
  _$ContactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ContactState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ContactEntity> contacts) loaded,
    required TResult Function(String message) error,
    required TResult Function() added,
    required TResult Function(String conversationId, String contactName)
        conversationReady,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ContactEntity> contacts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? added,
    TResult? Function(String conversationId, String contactName)?
        conversationReady,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ContactEntity> contacts)? loaded,
    TResult Function(String message)? error,
    TResult Function()? added,
    TResult Function(String conversationId, String contactName)?
        conversationReady,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Added value) added,
    required TResult Function(ConversationReady value) conversationReady,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Added value)? added,
    TResult? Function(ConversationReady value)? conversationReady,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Added value)? added,
    TResult Function(ConversationReady value)? conversationReady,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ContactState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ContactState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ContactEntity> contacts) loaded,
    required TResult Function(String message) error,
    required TResult Function() added,
    required TResult Function(String conversationId, String contactName)
        conversationReady,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ContactEntity> contacts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? added,
    TResult? Function(String conversationId, String contactName)?
        conversationReady,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ContactEntity> contacts)? loaded,
    TResult Function(String message)? error,
    TResult Function()? added,
    TResult Function(String conversationId, String contactName)?
        conversationReady,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Added value) added,
    required TResult Function(ConversationReady value) conversationReady,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Added value)? added,
    TResult? Function(ConversationReady value)? conversationReady,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Added value)? added,
    TResult Function(ConversationReady value)? conversationReady,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ContactState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ContactEntity> contacts});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = null,
  }) {
    return _then(_$LoadedImpl(
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactEntity>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl({required final List<ContactEntity> contacts})
      : _contacts = contacts;

  final List<ContactEntity> _contacts;
  @override
  List<ContactEntity> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  @override
  String toString() {
    return 'ContactState.loaded(contacts: $contacts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contacts));

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ContactEntity> contacts) loaded,
    required TResult Function(String message) error,
    required TResult Function() added,
    required TResult Function(String conversationId, String contactName)
        conversationReady,
  }) {
    return loaded(contacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ContactEntity> contacts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? added,
    TResult? Function(String conversationId, String contactName)?
        conversationReady,
  }) {
    return loaded?.call(contacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ContactEntity> contacts)? loaded,
    TResult Function(String message)? error,
    TResult Function()? added,
    TResult Function(String conversationId, String contactName)?
        conversationReady,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(contacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Added value) added,
    required TResult Function(ConversationReady value) conversationReady,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Added value)? added,
    TResult? Function(ConversationReady value)? conversationReady,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Added value)? added,
    TResult Function(ConversationReady value)? conversationReady,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements ContactState {
  const factory Loaded({required final List<ContactEntity> contacts}) =
      _$LoadedImpl;

  List<ContactEntity> get contacts;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ContactState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ContactEntity> contacts) loaded,
    required TResult Function(String message) error,
    required TResult Function() added,
    required TResult Function(String conversationId, String contactName)
        conversationReady,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ContactEntity> contacts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? added,
    TResult? Function(String conversationId, String contactName)?
        conversationReady,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ContactEntity> contacts)? loaded,
    TResult Function(String message)? error,
    TResult Function()? added,
    TResult Function(String conversationId, String contactName)?
        conversationReady,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Added value) added,
    required TResult Function(ConversationReady value) conversationReady,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Added value)? added,
    TResult? Function(ConversationReady value)? conversationReady,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Added value)? added,
    TResult Function(ConversationReady value)? conversationReady,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements ContactState {
  const factory Error({required final String message}) = _$ErrorImpl;

  String get message;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddedImplCopyWith<$Res> {
  factory _$$AddedImplCopyWith(
          _$AddedImpl value, $Res Function(_$AddedImpl) then) =
      __$$AddedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddedImplCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$AddedImpl>
    implements _$$AddedImplCopyWith<$Res> {
  __$$AddedImplCopyWithImpl(
      _$AddedImpl _value, $Res Function(_$AddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddedImpl implements Added {
  const _$AddedImpl();

  @override
  String toString() {
    return 'ContactState.added()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ContactEntity> contacts) loaded,
    required TResult Function(String message) error,
    required TResult Function() added,
    required TResult Function(String conversationId, String contactName)
        conversationReady,
  }) {
    return added();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ContactEntity> contacts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? added,
    TResult? Function(String conversationId, String contactName)?
        conversationReady,
  }) {
    return added?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ContactEntity> contacts)? loaded,
    TResult Function(String message)? error,
    TResult Function()? added,
    TResult Function(String conversationId, String contactName)?
        conversationReady,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Added value) added,
    required TResult Function(ConversationReady value) conversationReady,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Added value)? added,
    TResult? Function(ConversationReady value)? conversationReady,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Added value)? added,
    TResult Function(ConversationReady value)? conversationReady,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class Added implements ContactState {
  const factory Added() = _$AddedImpl;
}

/// @nodoc
abstract class _$$ConversationReadyImplCopyWith<$Res> {
  factory _$$ConversationReadyImplCopyWith(_$ConversationReadyImpl value,
          $Res Function(_$ConversationReadyImpl) then) =
      __$$ConversationReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId, String contactName});
}

/// @nodoc
class __$$ConversationReadyImplCopyWithImpl<$Res>
    extends _$ContactStateCopyWithImpl<$Res, _$ConversationReadyImpl>
    implements _$$ConversationReadyImplCopyWith<$Res> {
  __$$ConversationReadyImplCopyWithImpl(_$ConversationReadyImpl _value,
      $Res Function(_$ConversationReadyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
    Object? contactName = null,
  }) {
    return _then(_$ConversationReadyImpl(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConversationReadyImpl implements ConversationReady {
  const _$ConversationReadyImpl(
      {required this.conversationId, required this.contactName});

  @override
  final String conversationId;
  @override
  final String contactName;

  @override
  String toString() {
    return 'ContactState.conversationReady(conversationId: $conversationId, contactName: $contactName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationReadyImpl &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId, contactName);

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationReadyImplCopyWith<_$ConversationReadyImpl> get copyWith =>
      __$$ConversationReadyImplCopyWithImpl<_$ConversationReadyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ContactEntity> contacts) loaded,
    required TResult Function(String message) error,
    required TResult Function() added,
    required TResult Function(String conversationId, String contactName)
        conversationReady,
  }) {
    return conversationReady(conversationId, contactName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ContactEntity> contacts)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? added,
    TResult? Function(String conversationId, String contactName)?
        conversationReady,
  }) {
    return conversationReady?.call(conversationId, contactName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ContactEntity> contacts)? loaded,
    TResult Function(String message)? error,
    TResult Function()? added,
    TResult Function(String conversationId, String contactName)?
        conversationReady,
    required TResult orElse(),
  }) {
    if (conversationReady != null) {
      return conversationReady(conversationId, contactName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
    required TResult Function(Added value) added,
    required TResult Function(ConversationReady value) conversationReady,
  }) {
    return conversationReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
    TResult? Function(Added value)? added,
    TResult? Function(ConversationReady value)? conversationReady,
  }) {
    return conversationReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    TResult Function(Added value)? added,
    TResult Function(ConversationReady value)? conversationReady,
    required TResult orElse(),
  }) {
    if (conversationReady != null) {
      return conversationReady(this);
    }
    return orElse();
  }
}

abstract class ConversationReady implements ContactState {
  const factory ConversationReady(
      {required final String conversationId,
      required final String contactName}) = _$ConversationReadyImpl;

  String get conversationId;
  String get contactName;

  /// Create a copy of ContactState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationReadyImplCopyWith<_$ConversationReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
