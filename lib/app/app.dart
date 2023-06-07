import 'package:invoicex/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:invoicex/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:invoicex/ui/views/home/home_view.dart';
import 'package:invoicex/ui/views/startup/startup_view.dart';
import 'package:invoicex/ui/views/unknown/unknown_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:invoicex/ui/dialogs/sign_in/sign_in_dialog.dart';
import 'package:invoicex/ui/views/dashboard/dashboard_view.dart';
import 'package:invoicex/ui/views/subscriptions/subscriptions_view.dart';
import 'package:invoicex/ui/views/services/services_view.dart';
import 'package:invoicex/ui/views/navigation/navigation_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    CustomRoute(
      page: StartupView,
      initial: true,
    ),
    CustomRoute(
      page: HomeView,
    ),
    CustomRoute(page: DashboardView),
    CustomRoute(page: SubscriptionsView),
    CustomRoute(page: ServicesView),
    CustomRoute(page: NavigationView),
// @stacked-route

    CustomRoute(page: UnknownView, path: '/404'),

    /// When none of the above routes match, redirect to UnknownView
    RedirectRoute(path: '*', redirectTo: '/404'),
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: RouterService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: SignInDialog),
// @stacked-dialog
  ],
)
class App {}
