import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

//  Listado de colors inmutable (nunca va a cambiar)

final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider<int>((ref) => 0);

final themeNotifierProvider = StateNotifierProvider<Themenotifier, AppTheme>(
  (ref) => Themenotifier(),
);

// Controller or notifier
class Themenotifier extends StateNotifier<AppTheme> {
  // STATE = ESTADO = new AppTheme();
  Themenotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIdex) {
    state = state.copyWith(selectedColor: colorIdex);
  }
}
