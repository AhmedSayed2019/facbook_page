part of 'post_bloc.dart';

abstract class RequestStates {}

class RequestInitialState extends RequestStates {}

class RequestLoadingState extends RequestStates {}

class RequestSuccessState extends RequestStates {
    HomeModel homeModel ;

    RequestSuccessState(this.homeModel);
}

class NotificationSuccessState extends RequestStates {
    List<UserNotification> notification ;

    NotificationSuccessState(this.notification);
}
