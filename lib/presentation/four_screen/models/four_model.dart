// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'four_item_model.dart';

/// This class defines the variables used in the [four_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FourModel extends Equatable {
  FourModel({this.fourItemList = const []}) {}

  List<FourItemModel> fourItemList;

  FourModel copyWith({List<FourItemModel>? fourItemList}) {
    return FourModel(
      fourItemList: fourItemList ?? this.fourItemList,
    );
  }

  @override
  List<Object?> get props => [fourItemList];
}
