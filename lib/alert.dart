import "package:flutter/material.dart";

class Alert {
  static Widget error(String text) {
    return _Alert(text: text, color: Colors.red, icon: Icons.info_outline);
  }

  static Widget warning(String text) {
    return _Alert(text: text, color: Colors.orange, icon: Icons.warning_amber);
  }

  static Widget info(String text) {
    return _Alert(text: text, color: Colors.blue, icon: Icons.info_outline);
  }

  static Widget success(String text) {
    return _Alert(
        text: text, color: Colors.green, icon: Icons.check_circle_outline);
  }
}

class _Alert extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;

  const _Alert({
    required this.text,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(text),
      tileColor: color.withAlpha(50),
      iconColor: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );
  }
}