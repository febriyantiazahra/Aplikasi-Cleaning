import 'package:final_project_2023/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:final_project_2023/main.dart' as app;

void main() {
  // Memastikan inisialisasi pengujian integrasi
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  // Mendefinisikan grup pengujian untuk fungsionalitas login
  group('Login Test', () {
    // Mendefinisikan kasus uji untuk memverifikasi proses login
    testWidgets('Verify Login', (WidgetTester tester) async {
      // Menjalankan aplikasi utama
      app.main();
      // Menunggu pohon widget awal selesai,
      // Tunda selama 2 detik untuk memungkinkan proses latar belakang
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));

      // Memasukkan kredensial login valid di bidang teks email dan password
      await tester.enterText(find.byType(TextFormField).at(0), 'debi@gmail.com');
      await Future.delayed(const Duration(seconds: 2));
      await tester.enterText(find.byType(TextFormField).at(1), '123456789');
      await Future.delayed(const Duration(seconds: 2));

      // Mengetuk tombol login
      await tester.tap(find.widgetWithText(GestureDetector, 'Login'));
      await Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 2));

      // Harapkan menemukan widget HomeView pada login yang berhasil
      expect(find.byType(HomeView), findsOneWidget);
    });
  });
}