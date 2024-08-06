import 'package:sales_management_dashboard/utils/assets_util.dart';

class DestinationModal {
  final String icon;
  final String label;

  DestinationModal({
    required this.icon,
    required this.label,
  });
}

List<DestinationModal> destinations = [
  DestinationModal(icon: AssetsUtil.dashboardIcon, label: 'Dashboard'),
  DestinationModal(icon: AssetsUtil.profileIcon, label: 'Profile'),
  DestinationModal(icon: AssetsUtil.leaderBoardIcon, label: 'Leader Board'),
  DestinationModal(icon: AssetsUtil.productIcon, label: 'Product'),
  DestinationModal(icon: AssetsUtil.salesReportIcon, label: 'Sales Report'),
  DestinationModal(icon: AssetsUtil.messageIcon, label: 'Message'),
  DestinationModal(icon: AssetsUtil.settingsIcon, label: 'Settings'),
  DestinationModal(icon: AssetsUtil.favouriteIcon, label: 'Favourite'),
  DestinationModal(icon: AssetsUtil.historyIcon, label: 'History'),
];
