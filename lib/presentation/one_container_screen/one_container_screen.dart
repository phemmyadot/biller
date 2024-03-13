import 'package:biller/presentation/one_page/one_page.dart';
import 'package:biller/presentation/two_page/two_page.dart';
import 'package:biller/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:biller/core/app_export.dart';
import 'notifier/one_container_notifier.dart';

class OneContainerScreen extends ConsumerStatefulWidget {
  const OneContainerScreen({Key? key}) : super(key: key);

  @override
  OneContainerScreenState createState() => OneContainerScreenState();
}

// ignore_for_file: must_be_immutable
class OneContainerScreenState extends ConsumerState<OneContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.onePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
