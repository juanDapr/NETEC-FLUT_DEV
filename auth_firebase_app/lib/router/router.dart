import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';
import '../providers/auth_providers.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/register_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
      redirect: (_, state) {
        final container = ProviderContainer();
        final authState = container.read(authStateProvider);
        return authState == null ? '/login' : null;
      },
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => RegisterScreen(),
    ),
  ],
);
