
part of 'cordinate_bloc.dart';

abstract class CordinateEvent extends Equatable {
  const CordinateEvent();

  @override
  List<Object> get props => [];
}
class UpdateCordinateEvent extends CordinateEvent {
  final Cordinate cord;
  const UpdateCordinateEvent({
    required this.cord,
  });
}
