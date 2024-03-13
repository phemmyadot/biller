import 'package:biller/presentation/one_page/one_page.dart';
import 'package:biller/presentation/two_page/two_page.dart';
import 'package:biller/widgets/app_bar/custom_app_bar.dart';
import 'package:biller/widgets/app_bar/appbar_leading_image.dart';
import 'package:biller/widgets/app_bar/appbar_title.dart';
import 'package:biller/widgets/app_bar/appbar_trailing_image.dart';
import 'widgets/four_item_widget.dart';
import 'models/four_item_model.dart';
import 'package:biller/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:biller/core/app_export.dart';
import 'notifier/four_notifier.dart';

class FourScreen extends ConsumerStatefulWidget {
  const FourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  FourScreenState createState() => FourScreenState();
}

class FourScreenState extends ConsumerState<FourScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              _buildFour(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
        text: "lbl_accounts".tr,
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
  Widget _buildFour(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: Consumer(
          builder: (context, ref, _) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 134.v,
                crossAxisCount: 2,
                mainAxisSpacing: 14.h,
                crossAxisSpacing: 14.h,
              ),
              physics: BouncingScrollPhysics(),
              itemCount:
                  ref.watch(fourNotifier).fourModelObj?.fourItemList.length ??
                      0,
              itemBuilder: (context, index) {
                FourItemModel model =
                    ref.watch(fourNotifier).fourModelObj?.fourItemList[index] ??
                        FourItemModel();
                return FourItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homeblue200:
        return AppRoutes.onePage;
      case BottomBarEnum.Icon:
        return AppRoutes.twoPage;
      case BottomBarEnum.Grid:
        return "/";
      case BottomBarEnum.Lock:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.onePage:
        return OnePage();
      case AppRoutes.twoPage:
        return TwoPage();
      default:
        return DefaultWidget();
    }
  }
}
