import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCardData extends StatelessWidget {
  const MyCardData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(left: 31, top: 16, right: 42),
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
        const Expanded(child: SizedBox()),
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
              const SizedBox(height: 10),
              Text(
                '12/20 - 124',
                style: AppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
        const Flexible(child: SizedBox(height: 16))
      ],
    );
  }
}
