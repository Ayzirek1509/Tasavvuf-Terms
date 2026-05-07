import 'package:flutter/material.dart';
import '../models/category_item.dart';
import '../theme/app_colors.dart';

class CategoryCard extends StatelessWidget {
  final CategoryItem item;
  final VoidCallback? onTap;

  const CategoryCard({super.key, required this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        splashColor: Colors.white.withValues(alpha: 0.1),
        child: Ink(
          decoration: BoxDecoration(
            color: isDark ? AppColors.darkCard : AppColors.cardGreen,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.15),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 3,
                  child: Center(
                    child: Icon(
                      item.icon,
                      size: 36,
                      color: item.iconColor,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Flexible(
                  flex: 2,
                  child: Text(
                    item.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 1.25,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
