import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fourteen_item_model.dart';
import '../models/nine_item_model.dart';
import 'package:biller/presentation/one_page/models/one_model.dart';
part 'one_state.dart';

final oneNotifier = StateNotifierProvider<OneNotifier, OneState>(
  (ref) => OneNotifier(OneState(
    oneModelObj: OneModel(fourteenItemList: [
      FourteenItemModel(
          home: ImageConstant.imgHome,
          rentalIncome: "Rental Income",
          date: "14 July 2021",
          price: "+6,500.00"),
      FourteenItemModel(
          home: ImageConstant.imgCart,
          rentalIncome: "Grocery Shopping",
          date: "22 July 2021",
          price: "-300.49"),
      FourteenItemModel(
          rentalIncome: "Payment from Eric",
          date: "10 July 2021",
          price: "+1,280.00")
    ], nineItemList: [
      NineItemModel(
          home: ImageConstant.imgHome,
          rentalIncome: "Rental Income",
          date: "14 July 2021",
          price: "+6,500.00"),
      NineItemModel(
          home: ImageConstant.imgThumbsUp,
          rentalIncome: "Business Income",
          date: "12 July 2021",
          price: "+4,300.00"),
      NineItemModel(
          rentalIncome: "Payment from Eric",
          date: "10 July 2021",
          price: "+1,280.00")
    ]),
  )),
);

/// A notifier that manages the state of a One according to the event that is dispatched to it.
class OneNotifier extends StateNotifier<OneState> {
  OneNotifier(OneState state) : super(state) {}
}
