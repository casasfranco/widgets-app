import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      icon: Icons.smart_button_outlined,
      link: '/butons',
      subTitle: 'Varios botones en Flutter',
      title: 'Botones'),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/card',
    icon: Icons.credit_card,
  ),
];
