// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'two_item_model.dart';

/// This class defines the variables used in the [two_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TwoModel extends Equatable {
  TwoModel({this.twoItemList = const []}) {}

  List<TwoItemModel> twoItemList;

  TwoModel copyWith({List<TwoItemModel>? twoItemList}) {
    return TwoModel(
      twoItemList: twoItemList ?? this.twoItemList,
    );
  }

  @override
  List<Object?> get props => [twoItemList];
}
