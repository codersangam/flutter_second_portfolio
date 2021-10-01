// ignore_for_file: file_names, non_constant_identifier_names
class Recommendation {
  final String? name, source, text;

  Recommendation({this.name, this.source, this.text});
}

final List<Recommendation> demo_recommendations = [
  Recommendation(
    name: "Saroj Pasman",
    source: "gangajal.com",
    text:
        "Till now, Sangam has provided me the best services. Raised tickets several times and he solved on time. He also delivered sites on time. In briefly, he always looks after his clients to provide best of best. Thanks.",
  ),
];
