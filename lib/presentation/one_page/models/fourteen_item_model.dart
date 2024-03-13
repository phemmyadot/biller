import '../../../core/app_export.dart';

/// This class is used in the [fourteen_item_widget] screen.
class FourteenItemModel {
  FourteenItemModel({
    this.home,
    this.rentalIncome,
    this.date,
    this.price,
    this.id,
  }) {
    home = home ?? ImageConstant.imgHome;
    rentalIncome = rentalIncome ?? "Rental Income";
    date = date ?? "14 July 2021";
    price = price ?? "+6,500.00";
    id = id ?? "";
  }

  String? home;

  String? rentalIncome;

  String? date;

  String? price;

  String? id;
}
