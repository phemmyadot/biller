import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:biller/presentation/one_container_screen/models/one_container_model.dart';
part 'one_container_state.dart';

final oneContainerNotifier =
    StateNotifierProvider<OneContainerNotifier, OneContainerState>((ref) =>
        OneContainerNotifier(
            OneContainerState(oneContainerModelObj: OneContainerModel())));

/// A notifier that manages the state of a OneContainer according to the event that is dispatched to it.
class OneContainerNotifier extends StateNotifier<OneContainerState> {
  OneContainerNotifier(OneContainerState state) : super(state);
}
