/// Contains all the routes for the marathon app.
class MarathonRoute {
  const MarathonRoute(this.route);

  static const firstScreen = MarathonRoute('/first');
  static const secondScreen = MarathonRoute('/second');

  final String route;

  @override
  String toString() => route;
}
