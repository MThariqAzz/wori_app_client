import 'package:injectable/injectable.dart';
import 'package:wori_app/core.dart';
import 'package:wori_app/features/chat/domain/usecase/fetch_daily_question_use_case.dart';

final sl = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() => sl.init();

@module
abstract class AppModule {
  @injectable
  RegisterUserCase registerUserCase(AuthRepository repository) =>
      RegisterUserCase(repository: repository);

  @injectable
  LoginUserCase loginUserCase(AuthRepository repository) =>
      LoginUserCase(repository: repository);

  @injectable
  FetchConversationUseCase fetchConversationUseCase(
          ConversationRepository repository) =>
      FetchConversationUseCase(repository: repository);

  @injectable
  FetchMessageUseCase fetchMessageUseCase(MessageRepository repository) =>
      FetchMessageUseCase(repository: repository);

  @injectable
  FetchContactUseCase fetchContactUseCase(ContactRepository repository) =>
      FetchContactUseCase(repository: repository);

  @injectable
  AddContactUseCase addContactUseCase(ContactRepository repository) =>
      AddContactUseCase(repository: repository);

  @injectable
  CheckOrCreateConversationUseCase checkOrCreateConversationUseCase(
    ConversationRepository repository,
  ) =>
      CheckOrCreateConversationUseCase(repository);

  @injectable
  FetchDailyQuestionUseCase fetchDailyQuestionUseCase(
          MessageRepository repository) =>
      FetchDailyQuestionUseCase(
          repository: repository); // Fix: Don't call itself
}
