import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:my_flutter_app/screen/shop_home/shop_home_binding.dart';
import 'package:my_flutter_app/screen/shop_home/shop_home_logic.dart';
import 'package:my_flutter_app/screen/shop_home/shop_home_view.dart';
// import 'package:machinerent/Screen/auth/login/loginuser_binding.dart';
// import 'package:machinerent/Screen/auth/login/loginuser_view.dart';
// import 'package:machinerent/auth/login/loginuser_binding.dart';
//import 'package:machinerent/auth/login/loginuser_view.dart';
// import 'package:machinerent/Screen/AddMachine/addmachine_binding.dart';
// import 'package:machinerent/Screen/AddMachine/addmachine_view.dart';
// import 'package:machinerent/Screen/view_machine/view_machine_binding.dart';
// import 'package:machinerent/Screen/view_machine/view_machine_view.dart';
// import 'package:machinerent/Screen/welcome/welcome_binding.dart';
// import 'package:machinerent/Screen/welcome/welcome_view.dart';
// import 'package:rent_mechine/screen/addmachine/addmachine_binding.dart';
// import 'package:machinerent/screen/add_machine/add_machine_view.dart';
// import 'package:rent_mechine/screen/auth/add_user/add_user_binding.dart';
// import 'package:rent_mechine/screen/auth/add_user/add_user_view.dart';
// import 'package:rent_mechine/screen/auth/login/login_binding.dart';
// import 'package:rent_mechine/screen/auth/login/login_view.dart';
// import 'package:rent_mechine/screen/view_machine/view_machine_view.dart';
// import 'package:rent_mechine/screen/welcome/welcome_binding.dart';
// import 'package:rent_mechine/screen/welcome/welcome_view.dart';
// import '../screen/view_machine/view_machine_binding.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.homeScreen,
        page: () => const ShopHomePage(),
        binding: ShopHomeBinding()),
    // GetPage(
    //     name: AppRoutes.addUserScreen,
    //     page: () => const AddUserPage(),
    //     binding: AddUserBinding()),
    // GetPage(
    //     name: AppRoutes.WelcomeScreen,
    //     page: () => const WelcomeView(),
    //     binding: WelcomeBinding()),
    // GetPage(
    //     name: AppRoutes.addMachineScreen,
    //     page: () => const AddMachineView(),
    //     binding: AddMachineBinding()),
    // GetPage(
    //     name: AppRoutes.viewMachine,
    //     page: () => const ViewMachinePage(),
    //     binding: ViewMachineBinding()),

    // GetPage(
    //     name: AppRoutes.listUserScreen,
    //     page: () => const ListUserPage(),
    //     binding: ListUserBinding()),
  ];
}
