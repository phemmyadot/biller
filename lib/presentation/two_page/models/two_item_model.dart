import '../../../core/app_export.dart';

/// This class is used in the [two_item_widget] screen.
class TwoItemModel {
  TwoItemModel({
    this.cart,
    this.groceryShopping,
    this.date,
    this.price,
    this.id,
  }) {
    cart = cart ?? ImageConstant.imgCart;
    groceryShopping = groceryShopping ?? "Grocery Shopping";
    date = date ?? "22 July 2021";
    price = price ?? "-300.49";
    id = id ?? "";
  }

  String? cart;

  String? groceryShopping;

  String? date;

  String? price;

  String? id;
}
