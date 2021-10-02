import 'package:flutter/material.dart';
import 'package:sangam_portfolio/models/Project.dart';
import 'package:sangam_portfolio/responsive.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            style: Theme.of(context).textTheme.subtitle2,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          Text(
            project.description!,
            maxLines: Responsive.isMobileLarge(context) ? 3 : 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(height: 1.5),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: 'Read More >>'.text.color(primaryColor).make(),
          ),
        ],
      ),
    );
  }
}
