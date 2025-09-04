part of 'featured_boobs_cubit.dart';

sealed class FeaturedBoobsState extends Equatable {
  const FeaturedBoobsState();

  @override
  List<Object> get props => [];
}

final class FeaturedBoobsInitial extends FeaturedBoobsState {}

final class FeaturedBoobsloading extends FeaturedBoobsState {}

final class FeaturedBoobsFailure extends FeaturedBoobsState {
  final String errMessage;

  const FeaturedBoobsFailure(this.errMessage);

}

final class FeaturedBoobsSuccess extends FeaturedBoobsState {
  final List<BookModel> books;

  const FeaturedBoobsSuccess(this.books);
}
