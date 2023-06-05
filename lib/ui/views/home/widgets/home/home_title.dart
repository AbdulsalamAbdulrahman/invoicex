import 'package:flutter/material.dart';
import 'package:invoicex/ui/common/app_colors.dart';
import 'package:invoicex/ui/common/shared_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: getValueForScreenType<CrossAxisAlignment>(
          context: context,
          mobile: CrossAxisAlignment.start,
          desktop: CrossAxisAlignment.start),
      children: <Widget>[
        RichText(
          text: TextSpan(
            text: 'STREAMLINE\nYOUR\n',
            children: const <TextSpan>[
              TextSpan(
                text: 'FINANCES',
                style: TextStyle(
                  color: kcPurple,
                ),
              ),
            ],
            // Use 60 for mobile and 80 for desktop <====== #1
            style: ktsTitleText.copyWith(
              fontSize: getValueForScreenType<double>(
                context: context,
                mobile: 35,
                desktop: 80,
              ),
            ),
          ),
        ),
        Text(
          'Effortless invoicing, seamless payments - all in one place.',
          style: ktsBodyRegular.copyWith(fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}
