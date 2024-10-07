import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:bw2_machinetask_mock_api/controller/api_services/api_services.dart';
import 'package:bw2_machinetask_mock_api/model/notification_model.dart';
import 'package:equatable/equatable.dart';

part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  ApiServie apiServie;
  NotificationBloc({required this.apiServie}) : super(NotificationInitial()) {
    
    on<GetNotificationsEvent>(getNotfications);
  }

  FutureOr<void> getNotfications(GetNotificationsEvent event, Emitter<NotificationState> emit) async{
    emit(NotificationInitial());
    try{
      final result = await apiServie.fetchNotifications();

      if(result.isEmpty){
        emit(NotificationEmptyState());
      }else{
        emit(NotificationSuccess(notifications: result));
      }
    }catch(error){
      emit(NotificationErrorState());
      log(error.toString());
    }
  }
}
