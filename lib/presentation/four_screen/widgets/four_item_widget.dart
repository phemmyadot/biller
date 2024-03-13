import '../models/four_item_model.dart';
import 'package:flutter/material.dart';
import 'package:biller/core/app_export.dart';

// ignore: must_be_immutable
class FourItemWidget extends StatelessWidget {
  FourItemWidget(
    this.fourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FourItemModel fourItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.whiteA700,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Container(
        height: 133.v,
        width: 186.h,
        padding: EdgeInsets.all(14.h),
        decoration: AppDecoration.outlineBlack9000c.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 5.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 19.h),
                      child: Text(
                        fourItemModelObj.shopping!,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      fourItemModelObj.price!,
                      style: CustomTextStyles.bodyLargeBlue200,
                    ),
                    SizedBox(height: 11.v),
                    SizedBox(
                      width: 152.h,
                      child: Text(
                        fourItemModelObj.maurisHendrerit!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(
                          height: 1.67,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 10.adaptSize,
                width: 10.adaptSize,
                margin: EdgeInsets.only(right: 1.h),
                decoration: BoxDecoration(
                  color: appTheme.blue200,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
