import 'package:flutter/material.dart';
import 'package:wtew/config/app_routes.dart';
import 'package:wtew/config/utils/app_assets.dart';
import 'package:wtew/config/utils/app_strings.dart';
import 'package:wtew/features/partners/domain/entities/partner.dart';
import 'package:wtew/features/partners/presentation/widgets/partner_list_view.dart';
import 'package:wtew/features/widgets/drawer_header.dart';
import 'package:wtew/features/widgets/drawer_item.dart';

// ignore: must_be_immutable
class PartnersView extends StatelessWidget {
  const PartnersView({Key? key}) : super(key: key);

  final List<Partner> partners = PartnersData.partners;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Partners'),
      ),
      drawer: buildDrawer(context),
      body: PartnerListView(partners: partners),
    );
  }

  Drawer buildDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const Header(),
          const Divider(),
          DrawerItem(
            title: AppStrings.notes,
            icon: AppAssets.notes,
            onTap: () =>
                Navigator.pushReplacementNamed(context, AppRoutes.homeRoute),
          ),
          DrawerItem(
            title: AppStrings.gpaCalculator,
            icon: AppAssets.gpaIcon,
            onTap: () => Navigator.pushReplacementNamed(
                context, AppRoutes.gpaCalculatorRoute),
          ),
          // DrawerItem(
          //     title: AppStrings.partners,
          //     icon: AppAssets.partners,
          //     onTap: () {
          //       if (ModalRoute.of(context)!.settings.name ==
          //           AppRoutes.partnersRoute) {
          //         Navigator.of(context)
          //             .pushReplacementNamed(AppRoutes.partnersRoute);
          //       } else {
          //         Navigator.pop(context);
          //       }
          //     }),
          // DrawerItem(
          //   title: AppStrings.settings,
          //   icon: AppAssets.settings,
          //   onTap: () {},
          // ),
        ],
      ),
    );
  }
}
