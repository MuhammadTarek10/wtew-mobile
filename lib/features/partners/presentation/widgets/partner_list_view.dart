import 'package:flutter/material.dart';
import 'package:wtew/config/utils/app_media_query.dart';
import 'package:wtew/features/partners/domain/entities/partner.dart';
import 'package:wtew/features/partners/presentation/widgets/partner_animated_scroll.dart';
import 'package:wtew/features/partners/presentation/widgets/partner_card.dart';

class PartnerListView extends StatelessWidget {
  const PartnerListView({
    Key? key,
    required this.partners,
  }) : super(key: key);

  final List<Partner> partners;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: partners.length,
      separatorBuilder: (context, index) =>
          Divider(height: context.height * 0.005),
      itemBuilder: (context, index) {
        final partner = partners[index];
        return PartnerAnimatedScrollView(
          child: PartnerCard(partner: partner),
        );
      },
    );
  }
}
