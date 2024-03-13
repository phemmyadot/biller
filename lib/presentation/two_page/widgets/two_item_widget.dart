import '../models/two_item_model.dart';
import 'package:biller/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:biller/core/app_export.dart';

// ignore: must_be_immutable
class TwoItemWidget extends StatelessWidget {
  TwoItemWidget(
    this.twoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TwoItemModel twoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.outlineBlack9000c2.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 46.adaptSize,
              width: 46.adaptSize,
              padding: EdgeInsets.all(13.h),
              child: CustomImageView(
                imagePath: twoItemModelObj?.cart,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                bottom: 10.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    twoItemModelObj.groceryShopping!,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    twoItemModelObj.date!,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 8.v,
                bottom: 12.v,
              ),
              child: Text(
                twoItemModelObj.price!,
                style: CustomTextStyles.bodyLargeRed400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
