import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: 'Knowledges'.text.subtitle2(context).make(),
        ),
        const KnowledgeText(
          label: 'Flutter, Dart',
        ),
        const KnowledgeText(
          label: 'Git and Github',
        ),
        const KnowledgeText(
          label: 'Bootstrap',
        ),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Image.asset('assets/icons/checked.png'),
          // SvgPicture.asset('assets/icons/checked.svg'),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          label.text.make(),
        ],
      ),
    );
  }
}
