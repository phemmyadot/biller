import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/two_item_model.dart';
import 'package:biller/presentation/two_page/models/two_model.dart';
part 'two_state.dart';

final twoNotifier = StateNotifierProvider<TwoNotifier, TwoState>(
  (ref) => TwoNotifier(TwoState(
    twoModelObj: TwoModel(twoItemList: [
      TwoItemModel(
          cart: ImageConstant.imgCart,
          groceryShopping: "Grocery Shopping",
          date: "22 July 2021",
          price: "-300.49"),
      TwoItemModel(
          cart: ImageConstant.imgUser,
          groceryShopping: "Pay to Employees",
          date: "20 July 2021",
          price: "-12,400.00"),
      TwoItemModel(
          cart: ImageConstant.imgFavorite,
          groceryShopping: "Health Expenditures",
          date: "14 July 2021",
          price: "-280.00"),
      TwoItemModel(
          cart: ImageConstant.imgHome,
          groceryShopping: "Rental Income",
          date: "14 July 2021",
          price: "+6,500.00")
    ]),
  )),
);

/// A notifier that manages the state of a Two according to the event that is dispatched to it.
class TwoNotifier extends StateNotifier<TwoState> {
  TwoNotifier(TwoState state) : super(state) {}
}
