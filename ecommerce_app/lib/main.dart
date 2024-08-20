import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';
import 'core/store.dart';
import 'pages/cart_page.dart';
import 'pages/home_page.dart';
import 'utils/routes.dart';
import 'widgets/themes.dart';

void main() {
  runApp(
    VxState(
      store: MyStore(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          theme: Mytheme.lightTheme(context),
          darkTheme: Mytheme.darkTheme(context),
          initialRoute: "/",
          routes: {
            "/": (context) => const HomePage(),
            MyRoutes.homeRoute: (context) => const HomePage(),
            MyRoutes.cartRoute: (context) => const CartPage(),
          },
        );
      },
    );
  }
}
