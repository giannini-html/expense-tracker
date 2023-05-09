import 'package:expense_tracker_fiap/pages/categorias_page.dart';
import 'package:expense_tracker_fiap/pages/contas_page.dart';
import 'package:expense_tracker_fiap/pages/dashboard_page.dart';
import 'package:expense_tracker_fiap/pages/transacoes_page.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: page,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        DashBoardPage(),
        TransacoesPage(),
        ContasPage(),
        CategoriasPage()
      ],
    );
  }

  Widget getBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: page,
      onTap: (index) {
        setState(() {
          page = index;
        });
      },
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        BottomNavigationBarItem(
          icon: Icon(Ionicons.bar_chart),
          label: "Dashboard",
        ),
        BottomNavigationBarItem(
          icon: Icon(Ionicons.swap_horizontal_outline),
          label: "Transações",
        ),
        BottomNavigationBarItem(
          icon: Icon(Ionicons.wallet),
          label: "contas",
        ),
        BottomNavigationBarItem(
          icon: Icon(Ionicons.list_outline),
          label: "caeorias",
        ),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
