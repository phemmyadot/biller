import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/four_item_model.dart';
import 'package:biller/presentation/four_screen/models/four_model.dart';
part 'four_state.dart';

final fourNotifier = StateNotifierProvider<FourNotifier, FourState>(
  (ref) => FourNotifier(FourState(
    fourModelObj: FourModel(fourItemList: [
      FourItemModel(
          shopping: "Shopping",
          price: "1,400",
          maurisHendrerit: "Mauris hendrerit mollis bibendum quisque."),
      FourItemModel(
          shopping: "Education",
          price: "500",
          maurisHendrerit: "Maecenas quis purus at metus posuere dapib.")
    ]),
  )),
);

/// A notifier that manages the state of a Four according to the event that is dispatched to it.
class FourNotifier extends StateNotifier<FourState> {
  FourNotifier(FourState state) : super(state) {}
}
