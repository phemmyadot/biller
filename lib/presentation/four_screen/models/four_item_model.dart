import '../../../core/app_export.dart';

/// This class is used in the [four_item_widget] screen.
class FourItemModel {
  FourItemModel({
    this.shopping,
    this.price,
    this.maurisHendrerit,
    this.id,
  }) {
    shopping = shopping ?? "Shopping";
    price = price ?? "1,400";
    maurisHendrerit =
        maurisHendrerit ?? "Mauris hendrerit mollis bibendum quisque.";
    id = id ?? "";
  }

  String? shopping;

  String? price;

  String? maurisHendrerit;

  String? id;
}
