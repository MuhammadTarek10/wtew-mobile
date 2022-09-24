import 'package:equatable/equatable.dart';
import 'package:wtew22/config/utils/app_assets.dart';

class Partner extends Equatable {
  final String name;
  final String description;
  final String logo;
  final String link;

  const Partner({
    required this.name,
    required this.description,
    required this.logo,
    required this.link,
  });

  @override
  List<Object?> get props => [
        name,
        description,
        logo,
        link,
      ];
}

class PartnersData {
  static const Partner awraaq = Partner(
    name: "Awraaq",
    description: "",
    logo: AppAssets.awraaq,
    link: "",
  );

  static const Partner grafico = Partner(
    name: "Grafico",
    description: "",
    logo: AppAssets.grafico,
    link: "",
  );

  static const Partner makers = Partner(
    name: "Makers",
    description: "",
    logo: AppAssets.makers,
    link: "",
  );

  static const Partner portal = Partner(
    name: "Portal",
    description: "",
    logo: AppAssets.portal,
    link: "",
  );

  static const Partner qahwablaben = Partner(
    name: "Qahwablaben",
    description: "",
    logo: AppAssets.qahwablaben,
    link: "",
  );

  static const Partner stickertology = Partner(
    name: "Stickrtology",
    description: "",
    logo: AppAssets.stickertology,
    link: "",
  );

  static const Partner varanda = Partner(
    name: "Varanda",
    description: "",
    logo: AppAssets.varanda,
    link: "",
  );

  static const Partner zatech = Partner(
    name: "Zatech",
    description: "",
    logo: AppAssets.zatech,
    link: "",
  );

  static const Partner zigzag = Partner(
    name: "Zigzag",
    description: "",
    logo: AppAssets.zigzag,
    link: "",
  );

  static const List<Partner> partners = [
    awraaq,
    grafico,
    makers,
    portal,
    qahwablaben,
    stickertology,
    varanda,
    zatech,
    zigzag,
  ];
}
