import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/app_colors.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  Future<void> _launchEmail() async {
    final Uri uri = Uri(scheme: 'mailto', path: 'tajibayevaayzirek@gmail.com');
    if (await canLaunchUrl(uri)) await launchUrl(uri);
  }

  Future<void> _launchPhone() async {
    final Uri uri = Uri(scheme: 'tel', path: '+998932743809');
    if (await canLaunchUrl(uri)) await launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Murojaat'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 38),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFE8F0F2), Color(0xFFF5EFE0)],
              ),
            ),
            child: Center(
              child: Image.asset('assets/images/drawer_contact.png', height: 120, fit: BoxFit.contain),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: _launchEmail,
                  child: const Text('Email: tajibayevaayzirek@gmail.com', style: TextStyle(fontSize: 18, color: AppColors.textDark)),
                ),
                const SizedBox(height: 12),
                GestureDetector(
                  onTap: _launchPhone,
                  child: const Text('Telefon: +998 93 274 38 09', style: TextStyle(fontSize: 18, color: AppColors.textDark)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
