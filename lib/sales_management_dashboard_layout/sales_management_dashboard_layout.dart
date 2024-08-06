import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales_management_dashboard/core/contants.dart';
import 'package:sales_management_dashboard/core/models/destination_modal.dart';
import 'package:sales_management_dashboard/core/widgets/global_text_form_field.dart';
import 'package:sales_management_dashboard/dashboard_screen/dashboard_screen.dart';
import 'package:sales_management_dashboard/utils/assets_util.dart';

class SalesManagementDashboardLayout extends StatefulWidget {
  const SalesManagementDashboardLayout({super.key});

  @override
  State<SalesManagementDashboardLayout> createState() =>
      _SalesManagementDashboardLayoutState();
}

class _SalesManagementDashboardLayoutState
    extends State<SalesManagementDashboardLayout> {
  SampleItem? selectedItem;
  int selectedIndex = 0;
  bool extended = false;
  List<Widget> screens = [
    DashboardScreen(),
    DashboardScreen(),
    DashboardScreen(),
    DashboardScreen(),
    DashboardScreen(),
    DashboardScreen(),
    DashboardScreen(),
    DashboardScreen(),
    DashboardScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            AssetsUtil.logoImage,
          ),
        ),
        centerTitle: false,
        titleSpacing: 35,
        title: Padding(
          padding:
              EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.3),
          child: GlobalTextFormField(
            hintText: 'Search here...',
            prefixIcon: Icon(
              Icons.search,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Badge(
              backgroundColor: Theme.of(context).colorScheme.errorContainer,
              child: SvgPicture.asset(AssetsUtil.notificationIcon),
            ),
          ),
          CircleAvatar(
            backgroundImage: AssetImage(AssetsUtil.avatarImage),
          ),
          PopupMenuButton<SampleItem>(
            initialValue: selectedItem,
            icon: Icon(Icons.keyboard_arrow_down),
            // onSelected: (SampleItem item) {
            //   setState(() {
            //     selectedItem = item;
            //   });
            // },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemOne,
                child: Text('Item 1'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemTwo,
                child: Text('Item 2'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemThree,
                child: Text('Item 3'),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Divider(
            height: 1,
          ),
          Expanded(
            child: Row(
              children: [
                NavigationRail(
                  minExtendedWidth: 170,
                  minWidth: 72,
                  groupAlignment: -1,
                  trailing: Expanded(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: IconButton(
                            icon: Icon(
                              extended
                                  ? Icons.keyboard_double_arrow_left
                                  : Icons.keyboard_double_arrow_right,
                            ),
                            onPressed: () {
                              setState(() {
                                extended = !extended;
                              });
                            }),
                      ),
                    ),
                  ),
                  extended: extended,
                  onDestinationSelected: (int index) {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  destinations: destinations
                      .map(
                        (e) => NavigationRailDestination(
                          icon: SvgPicture.asset(
                            e.icon,
                            width: 15,
                          ),
                          label: Text(e.label),
                        ),
                      )
                      .toList(),
                  selectedIndex: selectedIndex,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: VerticalDivider(
                      width: 1,
                    )),
                Expanded(
                  child: screens[selectedIndex],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
