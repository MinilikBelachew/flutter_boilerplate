import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/usecases/get_friends_usecase.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetFriendsUseCase getFriendsUseCase;

  HomeBloc({required this.getFriendsUseCase}) : super(HomeInitial()) {
    on<GetFriendsRequested>((event, emit) async {
      emit(HomeLoading());
      final result = await getFriendsUseCase(NoParams());
      
      result.fold(
        (failure) => emit(const HomeFailure('Failed to load friends')),
        (friends) => emit(HomeLoaded(friends)),
      );
    });
  }
}
