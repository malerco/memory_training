part of 'n_back_bloc.dart';

@freezed
class NBackEvent with _$NBackEvent {
  const factory NBackEvent.start(int nLevel) = _Start;
  const factory NBackEvent.showNext() = _ShowNext;
  const factory NBackEvent.switchToWaiting() = _SwitchToWaiting;
  const factory NBackEvent.timeout() = _Timeout;
  const factory NBackEvent.userResponse(bool isMatch) = _UserResponse;
  const factory NBackEvent.showFeedback(bool isCorrect) = _ShowFeedback;
  const factory NBackEvent.restart() = _Restart;
}