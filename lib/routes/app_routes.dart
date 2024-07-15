import 'package:fancy_ui/features/dashboard/views/dashboard_view.dart';
import 'package:fancy_ui/features/login/views/login.dart';
import 'package:fancy_ui/features/register/views/register_view.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: "/dashboard",
  routes: [
    GoRoute(
      name: "root",
      path: '/',
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      name: "login",
      path: '/login',
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      name: "register",
      path: '/register',
      builder: (context, state) => const RegisterView(),
    ),
    GoRoute(
      name: 'dashboard',
      path: '/dashboard',
      builder: (context, state) => const DashboardView(),
    ),
  ],
);