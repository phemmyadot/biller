import '../models/fourteen_item_model.dart';
import 'package:biller/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:biller/core/app_export.dart';

// ignore: must_be_immutable
class FourteenItemWidget extends StatelessWidget {
  FourteenItemWidget(
    this.fourteenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FourteenItemModel fourteenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineBlackC.copyWith(
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
              imagePath: fourteenItemModelObj?.home,
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
                  fourteenItemModelObj.rentalIncome!,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 3.v),
                Text(
                  fourteenItemModelObj.date!,
                  style: CustomTextStyles.bodySmall_1,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 14.v,
            ),
            child: Text(
              fourteenItemModelObj.price!,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
