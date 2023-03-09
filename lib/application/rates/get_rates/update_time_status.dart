import 'package:equatable/equatable.dart';

abstract class UpdateTimeStatus extends Equatable {}

class UpdateTimeLoading extends UpdateTimeStatus {
  @override
  List<Object?> get props => [];
}

class UpdateTimeCompleted extends UpdateTimeStatus {
  final DateTime time;
  UpdateTimeCompleted(this.time);

  @override
  List<Object?> get props => [time];
}

class UpdateTimeError extends UpdateTimeStatus{
  final String message;
  UpdateTimeError(this.message);

  @override
  List<Object?> get props => [message];
}
