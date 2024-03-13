// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'fourteen_item_model.dart';
import 'nine_item_model.dart';

/// This class defines the variables used in the [one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OneModel extends Equatable {
  OneModel({
    this.fourteenItemList = const [],
    this.nineItemList = const [],
  }) {}

  List<FourteenItemModel> fourteenItemList;

  List<NineItemModel> nineItemList;

  OneModel copyWith({
    List<FourteenItemModel>? fourteenItemList,
    List<NineItemModel>? nineItemList,
  }) {
    return OneModel(
      fourteenItemList: fourteenItemList ?? this.fourteenItemList,
      nineItemList: nineItemList ?? this.nineItemList,
    );
  }

  @override
  List<Object?> get props => [fourteenItemList, nineItemList];
}
