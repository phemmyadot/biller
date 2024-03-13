import 'package:biller/widgets/app_bar/custom_app_bar.dart';
import 'package:biller/widgets/app_bar/appbar_leading_image.dart';
import 'package:biller/widgets/app_bar/appbar_title.dart';
import 'package:biller/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/fourteen_item_widget.dart';
import 'models/fourteen_item_model.dart';
import 'widgets/nine_item_widget.dart';
import 'models/nine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:biller/core/app_export.dart';
import 'notifier/one_notifier.dart';

// ignore_for_file: must_be_immutable
class OnePage extends ConsumerStatefulWidget {
  const OnePage({Key? key})
      : super(
          key: key,
        );

  @override
  OnePageState createState() => OnePageState();
}

class OnePageState extends ConsumerState<OnePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 20.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.v),
              Text(
                "lbl_welcome".tr,
                style: theme.textTheme.titleLarge,
              ),
              Text(
                "lbl_indigo_violet".tr,
                style: CustomTextStyles.bodyMediumBluegray400_1,
              ),
              SizedBox(height: 20.v),
              Column(
                children: [
                  _buildTitle(
                    context,
                    upcomingTransaction: "msg_recent_transactions".tr,
                  ),
                  SizedBox(height: 20.v),
                  _buildFourteen(context),
                  SizedBox(height: 27.v),
                  _buildTitle(
                    context,
                    upcomingTransaction: "msg_upcoming_transactions".tr,
                  ),
                  SizedBox(height: 20.v),
                  _buildNine(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 38.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 14.h,
          top: 19.v,
          bottom: 20.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_home".tr,
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
  Widget _buildFourteen(BuildContext context) {
    return Consumer(
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
              ref.watch(oneNotifier).oneModelObj?.fourteenItemList.length ?? 0,
          itemBuilder: (context, index) {
            FourteenItemModel model =
                ref.watch(oneNotifier).oneModelObj?.fourteenItemList[index] ??
                    FourteenItemModel();
            return FourteenItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return Consumer(
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
              ref.watch(oneNotifier).oneModelObj?.nineItemList.length ?? 0,
          itemBuilder: (context, index) {
            NineItemModel model =
                ref.watch(oneNotifier).oneModelObj?.nineItemList[index] ??
                    NineItemModel();
            return NineItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Common widget
  Widget _buildTitle(
    BuildContext context, {
    required String upcomingTransaction,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          upcomingTransaction,
          style: CustomTextStyles.bodyLargeBluegray90016.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 13.v,
          width: 6.h,
          margin: EdgeInsets.only(bottom: 4.v),
        ),
      ],
    );
  }
}
