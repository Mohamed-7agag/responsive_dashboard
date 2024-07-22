import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCardData extends StatelessWidget {
  const MyCardData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(left: 31, top: 20, right: 45),
          title: Text(
            'Name card',
            style:
                AppStyles.styleRegular16(context).copyWith(color: Colors.white),
          ),
          subtitle: Text(
            'Syah Bandi',
            style: AppStyles.styleMedium20(context),
          ),
          trailing: SvgPicture.asset(Assets.imagesGallery),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '0918 8124 0042 8129',
                style: AppStyles.styleSemiBold24(context)
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(height: 12),
              Text(
                '12/20 - 124',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 20,
                width: double.infinity,
              )
            ],
          ),
        )
      ],
    );
  }
}
