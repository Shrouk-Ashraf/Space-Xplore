import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:space_app/features/launches/data/models/launch_response.dart';

part 'launch_state.freezed.dart';

@freezed
class LaunchState<T> with _$LaunchState<T> {
  const factory LaunchState.initial() = _Initial;
  const factory LaunchState.loading() = Loading;
  const factory LaunchState.success(List<LaunchResponse> data) = Success<T>;
  const factory LaunchState.error({required String error}) = Error;
}
