// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'core.dart' as _i376;
import 'core/socket/socket_service.dart' as _i235;
import 'features/auth/data/datasources/auth_remote_data_source.dart' as _i767;
import 'features/auth/data/repositories/auth_repository_impl.dart' as _i111;
import 'features/auth/presentation/bloc/auth_bloc.dart' as _i363;
import 'features/chat/data/datasource/message_remote_data_source.dart' as _i685;
import 'features/chat/data/repositories/message_repository_impl.dart' as _i847;
import 'features/chat/domain/repositories/message_repository.dart' as _i309;
import 'features/chat/domain/usecase/fetch_daily_question_use_case.dart'
    as _i1027;
import 'features/chat/presentation/bloc/message_bloc.dart' as _i534;
import 'features/contacts/data/datasource/contact_remote_data_source.dart'
    as _i172;
import 'features/contacts/data/repositories/contact_repository_impl.dart'
    as _i44;
import 'features/contacts/domain/repositories/contact_repository.dart' as _i127;
import 'features/contacts/domain/usecase/add_contact_use_case.dart' as _i237;
import 'features/contacts/domain/usecase/fetch_contact_use_case.dart' as _i320;
import 'features/contacts/presentation/bloc/contact_bloc.dart' as _i63;
import 'features/conversations/data/datasources/conversation_remote_data_source.dart'
    as _i589;
import 'features/conversations/data/repositories/conversation_repository_impl.dart'
    as _i1034;
import 'features/conversations/domain/usecase/check_or_create_conversation_use_case.dart'
    as _i165;
import 'features/conversations/presentation/bloc/conversation_bloc.dart'
    as _i134;
import 'injection.dart' as _i464;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i767.AuthRemoteDataSource>(() => _i767.AuthRemoteDataSource());
    gh.factory<_i685.MessageRemoteDataSource>(
        () => _i685.MessageRemoteDataSource());
    gh.factory<_i172.ContactRemoteDataSource>(
        () => _i172.ContactRemoteDataSource());
    gh.factory<_i589.ConversationRemoteDataSource>(
        () => _i589.ConversationRemoteDataSource());
    gh.singleton<_i235.SocketService>(() => _i235.SocketService());
    gh.factory<_i376.AuthRepository>(() => _i111.AuthRepositoryImpl(
        authRemoteDataSource: gh<_i376.AuthRemoteDataSource>()));
    gh.factory<_i376.ConversationRepository>(() =>
        _i1034.ConversationRepositoryImpl(
            remoteDataSource: gh<_i376.ConversationRemoteDataSource>()));
    gh.factory<_i127.ContactRepository>(() => _i44.ContactRepositoryImpl(
        contactRemoteDataSource: gh<_i172.ContactRemoteDataSource>()));
    gh.factory<_i309.MessageRepository>(
        () => _i847.MessageRepositoryImpl(gh<_i685.MessageRemoteDataSource>()));
    gh.factory<_i376.RegisterUserCase>(
        () => appModule.registerUserCase(gh<_i376.AuthRepository>()));
    gh.factory<_i376.LoginUserCase>(
        () => appModule.loginUserCase(gh<_i376.AuthRepository>()));
    gh.factory<_i376.FetchMessageUseCase>(
        () => appModule.fetchMessageUseCase(gh<_i376.MessageRepository>()));
    gh.factory<_i1027.FetchDailyQuestionUseCase>(() =>
        appModule.fetchDailyQuestionUseCase(gh<_i376.MessageRepository>()));
    gh.factory<_i534.MessageBloc>(() => _i534.MessageBloc(
          gh<_i376.FetchMessageUseCase>(),
          gh<_i1027.FetchDailyQuestionUseCase>(),
        ));
    gh.factory<_i376.FetchConversationUseCase>(() =>
        appModule.fetchConversationUseCase(gh<_i376.ConversationRepository>()));
    gh.factory<_i376.CheckOrCreateConversationUseCase>(() => appModule
        .checkOrCreateConversationUseCase(gh<_i376.ConversationRepository>()));
    gh.factory<_i363.AuthBloc>(() => _i363.AuthBloc(
          gh<_i376.RegisterUserCase>(),
          gh<_i376.LoginUserCase>(),
        ));
    gh.factory<_i376.FetchContactUseCase>(
        () => appModule.fetchContactUseCase(gh<_i376.ContactRepository>()));
    gh.factory<_i376.AddContactUseCase>(
        () => appModule.addContactUseCase(gh<_i376.ContactRepository>()));
    gh.factory<_i134.ConversationBloc>(
        () => _i134.ConversationBloc(gh<_i376.FetchConversationUseCase>()));
    gh.factory<_i63.ContactBloc>(() => _i63.ContactBloc(
          gh<_i320.FetchContactUseCase>(),
          gh<_i237.AddContactUseCase>(),
          gh<_i165.CheckOrCreateConversationUseCase>(),
        ));
    return this;
  }
}

class _$AppModule extends _i464.AppModule {}
