import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackBar(BuildContext context, String platform) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Membuka $platform'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => _showSnackBar(context, 'Instagram'),
          icon: const Icon(Icons.camera_alt),
          color: Colors.pink,
          iconSize: 28,
          tooltip: 'Instagram',
        ),
        const SizedBox(width: 16),
        IconButton(
          onPressed: () => _showSnackBar(context, 'LinkedIn'),
          icon: const Icon(Icons.business),
          color: Colors.blue[800],
          iconSize: 28,
          tooltip: 'LinkedIn',
        ),
        const SizedBox(width: 16),
        IconButton(
          onPressed: () => _showSnackBar(context, 'GitHub'),
          icon: const Icon(Icons.code),
          color: Colors.black,
          iconSize: 28,
          tooltip: 'GitHub',
        ),
      ],
    );
  }
}
