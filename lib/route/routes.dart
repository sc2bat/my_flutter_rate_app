import 'package:go_router/go_router.dart';
import 'package:my_flutter_rate_app/ui/main/main_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MainScreen(),
    ),
  ],
);
