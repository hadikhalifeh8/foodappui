import 'package:foodappui/view/screen/pages/itemPage.dart';
import 'package:foodappui/view/screen/pages/home.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:foodappui/core/constant/routes.dart';
import 'package:foodappui/core/middleware/myMiddleware.dart';
import 'package:foodappui/test.dart';


List<GetPage<dynamic>>? routes = [
   GetPage(name: "/", page: () =>const Home(), middlewares: [MyMiddleware() ]),
  GetPage(name: AppRoute.itemPage, page: () => const Itempage()),




  //GetPage(name: AppRoute.test, page: () => const Test()),
];
