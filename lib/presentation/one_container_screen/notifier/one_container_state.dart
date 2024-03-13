// ignore_for_file: must_be_immutable

part of 'one_container_notifier.dart';

/// Represents the state of OneContainer in the application.
class OneContainerState extends Equatable {
  OneContainerState({this.oneContainerModelObj});

  OneContainerModel? oneContainerModelObj;

  @override
  List<Object?> get props => [
        oneContainerModelObj,
      ];

  OneContainerState copyWith({OneContainerModel? oneContainerModelObj}) {
    return OneContainerState(
      oneContainerModelObj: oneContainerModelObj ?? this.oneContainerModelObj,
    );
  }
}
