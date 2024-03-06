import 'package:travling_mobile_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:travling_mobile_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:travling_mobile_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:travling_mobile_app/ui/views/search_screen/search_screen_view.dart';
import 'package:travling_mobile_app/ui/views/category/category_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView),
    MaterialRoute(page: SearchScreenView),
    MaterialRoute(page: CategoryView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}