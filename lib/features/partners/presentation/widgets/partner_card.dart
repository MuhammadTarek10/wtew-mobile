import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wtew/config/utils/app_colors.dart';
import 'package:wtew/config/utils/app_media_query.dart';
import 'package:wtew/features/partners/domain/entities/partner.dart';

class PartnerCard extends StatelessWidget {
  const PartnerCard({Key? key, required this.partner}) : super(key: key);

  final Partner partner;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async => gotoLink(partner.link),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: context.height * 0.1,
              vertical: context.height * 0.1,
            ),
            height: context.height * 0.3,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: AppColors.accentColor,
                  spreadRadius: 1,
                  blurRadius: 4,
                )
              ],
              image: DecorationImage(
                image: AssetImage(partner.logo),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.1),
                  BlendMode.srcATop,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> gotoLink(String page) async {
    final link = Uri.parse(page);
    if (await canLaunchUrl(link)) {
      await launchUrl(link);
    }
  }
}
