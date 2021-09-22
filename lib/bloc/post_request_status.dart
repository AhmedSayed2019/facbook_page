part of 'post_bloc.dart';

abstract class RequestStates {}

class RequestInitialState extends RequestStates {}

class RequestLoadingState extends RequestStates {}

class RequestSuccessState extends RequestStates {}
