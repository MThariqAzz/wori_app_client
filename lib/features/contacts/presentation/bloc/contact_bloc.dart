import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wori_app/features/contacts/domain/entity/contact_entity.dart';
import 'package:wori_app/features/contacts/domain/usecase/add_contact_use_case.dart';
import 'package:wori_app/features/contacts/domain/usecase/fetch_contact_use_case.dart';
import 'package:wori_app/features/conversations/domain/usecase/check_or_create_conversation_use_case.dart';

part 'contact_event.dart';
part 'contact_state.dart';
part 'contact_bloc.freezed.dart';

@injectable
class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final FetchContactUseCase fetchContactUseCase;
  final AddContactUseCase addContactUseCase;

  final CheckOrCreateConversationUseCase checkOrCreateConversationUseCase;

  ContactBloc(
    this.fetchContactUseCase,
    this.addContactUseCase,
    this.checkOrCreateConversationUseCase,
  ) : super(const Initial()) {
    on<_Fetchcontacts>(_onFetchContacts);
    on<_Addcontact>(_onAddContact);
    on<_CheckOrCreate>(_onCheckOrCreate);
  }

  Future<void> _onFetchContacts(
      _Fetchcontacts event, Emitter<ContactState> emit) async {
    emit(const Loading());
    try {
      final contacts = await fetchContactUseCase();
      emit(Loaded(contacts: contacts));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }

  Future<void> _onAddContact(
      _Addcontact event, Emitter<ContactState> emit) async {
    emit(const Loading());
    try {
      await addContactUseCase(email: event.email);
      emit(const Added());
      add(const _Fetchcontacts());
    } catch (error) {
      emit(Error(message: error.toString()));
    }
  }

  Future<void> _onCheckOrCreate(
      _CheckOrCreate event, Emitter<ContactState> emit) async {
    emit(const Loading());
    try {
      final convertationId =
          await checkOrCreateConversationUseCase(contactId: event.contactId);
      emit(ConversationReady(
          conversationId: convertationId, contactName: event.contactName));
    } catch (error) {
      emit(Error(message: error.toString()));
    }
  }
}
