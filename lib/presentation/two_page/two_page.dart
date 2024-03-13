import 'package:biller/widgets/app_bar/custom_app_bar.dart';
import 'package:biller/widgets/app_bar/appbar_leading_image.dart';
import 'package:biller/widgets/app_bar/appbar_title.dart';
import 'package:biller/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/two_item_widget.dart';
import 'models/two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:biller/core/app_export.dart';
import 'notifier/two_notifier.dart';

// ignore_for_file: must_be_immutable
class TwoPage extends ConsumerStatefulWidget {
  const TwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  TwoPageState createState() => TwoPageState();
}

class TwoPageState extends ConsumerState<TwoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 26.v),
            child: SizedBox(
              height: 909.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 36.v,
                      ),
                      decoration: AppDecoration.outlineBlack9000c.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "msg_july_2022_aug".tr,
                                style: CustomTextStyles.bodyLargeBluegray900,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgFilter,
                                height: 18.v,
                                width: 20.h,
                                margin: EdgeInsets.only(
                                  left: 20.h,
                                  bottom: 3.v,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 18.v),
                          _buildChart(context),
                          SizedBox(height: 18.v),
                        ],
                      ),
                    ),
                  ),
                  _buildTwo(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 32.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 14.h,
          top: 19.v,
          bottom: 19.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_upcoming_transactions".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgContrast,
          margin: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 8.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildChart(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack9000c1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStatistic,
            height: 165.v,
            width: 358.h,
          ),
          SizedBox(height: 47.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildText(
              context,
              expense: "lbl_income".tr,
              price: "lbl_8_5k".tr,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: _buildText(
              context,
              expense: "lbl_expense".tr,
              price: "lbl_3_2k".tr,
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 14.h,
          top: 395.v,
          right: 14.h,
        ),
        child: Consumer(
          builder: (context, ref, _) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 14.v,
                );
              },
              itemCount:
                  ref.watch(twoNotifier).twoModelObj?.twoItemList.length ?? 0,
              itemBuilder: (context, index) {
                TwoItemModel model =
                    ref.watch(twoNotifier).twoModelObj?.twoItemList[index] ??
                        TwoItemModel();
                return TwoItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildText(
    BuildContext context, {
    required String expense,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            expense,
            style: CustomTextStyles.bodyMediumBluegray400.copyWith(
              color: appTheme.blueGray400,
            ),
          ),
        ),
        Text(
          price,
          style: CustomTextStyles.bodyLargeBluegray900_1.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
      ],
    );
  }
}
