// ignore_for_file: must_be_immutable

part of 'two_notifier.dart';

/// Represents the state of Two in the application.
class TwoState extends Equatable {
  TwoState({this.twoModelObj});

  TwoModel? twoModelObj;

  @override
  List<Object?> get props => [
        twoModelObj,
      ];

  TwoState copyWith({TwoModel? twoModelObj}) {
    return TwoState(
      twoModelObj: twoModelObj ?? this.twoModelObj,
    );
  }
}
