import 'package:flutter/material.dart';

class ListViewMenu extends StatefulWidget {
  final List<Map<String, dynamic>> DataMenu;
  const ListViewMenu({Key? key, required this.DataMenu}) : super(key: key);

  @override
  _ListViewMenuState createState() => _ListViewMenuState();
}

class _ListViewMenuState extends State<ListViewMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 520,
      child: ListView.builder(
        itemCount: widget.DataMenu.length,
        // scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return MenuData(
            iconLogo: widget.DataMenu[index]["logo_icon"],
            namaMenu: widget.DataMenu[index]["nama_menu"],
          );
        },
      ),
    );
  }
}

class MenuData extends StatelessWidget {
  final IconData iconLogo;
  final String namaMenu;
  const MenuData({
    Key? key,
    required this.iconLogo,
    required this.namaMenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black54,
        ),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                iconLogo,
                size: 20.0,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
          ],
        ),
      ),
    );
  }
}
