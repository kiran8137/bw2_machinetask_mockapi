part of 'notification_bloc.dart';

sealed class NotificationState extends Equatable {
  const NotificationState();
  
  @override
  List<Object> get props => [];
}

final class NotificationInitial extends NotificationState {}

final class NotificationSuccess extends NotificationState{
  final List<NotificationModel> notifications;

  const NotificationSuccess({required this.notifications});

  @override
  // TODO: implement props
  List<Object> get props => [notifications];

}

final class NotificationEmptyState extends NotificationState{}

final class NotificationErrorState extends NotificationState{}
