import 'package:flutter/material.dart';
import 'package:second_portfolio/models/Project.dart';
import 'package:second_portfolio/responsive.dart';
import 'package:second_portfolio/screens/home/components/project_card.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constants.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        'My Projects'.text.headline6(context).make(),
        const SizedBox(
          height: defaultPadding,
        ),
        const Responsive(
          mobile: ProjectsgridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          tablet: ProjectsgridView(
            childAspectRatio: 1.1,
          ),
          desktop: ProjectsgridView(),
          mobileLarge: ProjectsgridView(
            crossAxisCount: 2,
          ),
        ),
      ],
    );
  }
}

class ProjectsgridView extends StatelessWidget {
  const ProjectsgridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
