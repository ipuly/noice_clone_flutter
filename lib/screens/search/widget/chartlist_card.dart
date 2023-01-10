import 'package:assignment7_noice_app/data/list.dart';
import 'package:flutter/material.dart';

class CardListChart extends StatefulWidget {
  final List<Map<String, dynamic>> MenuSearch;
  const CardListChart({Key? key, required this.MenuSearch}) : super(key: key);

  @override
  _CardListChartState createState() => _CardListChartState();
}

class _CardListChartState extends State<CardListChart> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.5,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: widget.MenuSearch.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return MenuSearchMain(
          iconLogo: widget.MenuSearch[index]["logo_icon"],
          namaMenu: widget.MenuSearch[index]["nama_menu"],
          colorCard: widget.MenuSearch[index]["color_card"],
        );
      },
    );
  }
}

class MenuSearchMain extends StatelessWidget {
  final IconData iconLogo;
  final String namaMenu;
  final Color? colorCard;
  const MenuSearchMain({
    Key? key,
    required this.iconLogo,
    required this.namaMenu,
    required this.colorCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          color: colorCard,
          borderRadius: const BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    namaMenu,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                iconLogo,
                size: 20.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MyColor {
  const _MyColor(this.color, this.name);

  final Color color;
  final String name;

  static const List<_MyColor> myBgColors = const <_MyColor>[
    const _MyColor(const Color(0xFFFFC100), 'Orange'),
    const _MyColor(const Color(0xFF91FAFF), 'Light Blue'),
    const _MyColor(const Color(0xFF00D1FF), 'Cyan'),
    const _MyColor(const Color(0xFF00BCFF), 'Cerulean'),
    const _MyColor(const Color(0xFF009BEE), 'Blue'),
  ];
}
