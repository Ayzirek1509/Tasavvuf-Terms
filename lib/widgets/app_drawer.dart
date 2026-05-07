import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/about_screen.dart';
import '../screens/contact_screen.dart';
import '../screens/literature_screen.dart';
import '../screens/favorites_screen.dart';
import '../screens/recents_screen.dart';
import '../screens/settings_screen.dart';
import '../utils/app_colors.dart';
import '../utils/theme_provider.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDark = AppColors.isDark(context);

    return Drawer(
      width: MediaQuery.of(context).size.width * 0.78,
      backgroundColor: AppColors.panelBg(context),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(22),
          bottomRight: Radius.circular(22),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            const _DrawerHeader(),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 10, bottom: 14),
                child: Column(
                  children: [
                    _DrawerItem(
                      imagePath: 'assets/images/drawer_contact.png',
                      title: 'Murojaat',
                      onTap: () => _open(context, const ContactScreen()),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        children: [
                          const _ImageBox(
                            imagePath: 'assets/images/drawer_dark_mode.png',
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Text(
                              'Tungi ko‘rinish',
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.mainText(context),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Transform.scale(
                            scale: 0.70,
                            child: Switch(
                              value: themeProvider.isDarkMode,
                              onChanged: themeProvider.toggleTheme,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Divider(
                      height: 28,
                      indent: 18,
                      endIndent: 18,
                      color: isDark ? Colors.white24 : Colors.black12,
                    ),

                    // ⭐ SEVIMLILAR
                    _DrawerItem(
                      imagePath: 'assets/images/drawer_favorite.png',
                      title: 'Sevimlilar',
                      onTap: () => _open(context, const FavoritesScreen()),
                    ),

                    // 🕓 RECENTS
                    _DrawerItem(
                      imagePath: 'assets/images/drawer_recent.png',
                      title: 'Oxirgi ko‘rilganlar',
                      onTap: () => _open(context, const RecentsScreen()),
                    ),

                    // ⚙️ SETTINGS
                    _DrawerItem(
                      imagePath: 'assets/images/drawer_settings.png',
                      title: 'Sozlamalar',
                      onTap: () => _open(context, const SettingsScreen()),
                    ),

                    Divider(
                      height: 28,
                      indent: 18,
                      endIndent: 18,
                      color: isDark ? Colors.white24 : Colors.black12,
                    ),

                    _DrawerItem(
                      imagePath: 'assets/images/drawer_about.png',
                      title: 'Dastur haqida',
                      onTap: () => _open(context, const AboutScreen()),
                    ),

                    _DrawerItem(
                      imagePath: 'assets/images/drawer_literature.png',
                      title: 'Foydalanilgan adabiyotlar',
                      onTap: () => _open(context, const LiteratureScreen()),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: Text(
                'Versiya 1.0.0',
                style: TextStyle(
                  color: AppColors.secondaryText(context),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _open(BuildContext context, Widget page) {
    Navigator.pop(context);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 135,
      decoration: const BoxDecoration(
        color: AppColors.primaryGreen,
      ),
      padding: const EdgeInsets.fromLTRB(22, 44, 18, 18),
      child: const Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          'Menyu',
          style: TextStyle(
            color: Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const _DrawerItem({
    required this.imagePath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: _ImageBox(imagePath: imagePath),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: AppColors.mainText(context),
          fontWeight: FontWeight.w700,
        ),
      ),
      onTap: onTap,
    );
  }
}

class _ImageBox extends StatelessWidget {
  final String imagePath;

  const _ImageBox({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      padding: const EdgeInsets.all(8),
      child: Image.asset(imagePath),
    );
  }
}