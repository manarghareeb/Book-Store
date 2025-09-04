import 'package:book_store/features/home/data/models/book_model/book_model.dart';
import 'package:book_store/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_boobs_state.dart';

class FeaturedBoobsCubit extends Cubit<FeaturedBoobsState> {
  FeaturedBoobsCubit(this.homeRepo) : super(FeaturedBoobsInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBoobsloading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeaturedBoobsFailure(failure.errMessage));
      },
      ((books) {
        emit(FeaturedBoobsSuccess(books));
      }),
    );
  }
}
