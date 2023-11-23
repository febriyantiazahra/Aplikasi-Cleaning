import 'package:final_project_2023/app/routes/app_pages.dart';
import 'package:final_project_2023/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:integration_test/integration_test.dart';
import 'package:final_project_2023/app/modules/widgets/splash.dart';

void main() {
  // Mengaktifkan Integrasi Pengujian
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // Grup Pengujian untuk Widget SplashScreen
  group('Splash Test', () {
    // Pengujian Integrasi untuk SplashScreen
    testWidgets('Splash Integration Test', (WidgetTester tester) async {
      // Memuat widget utama (MyApp) ke dalam pohon widget dan menjalankan siklus build pertama
      await tester.pumpWidget(MyApp());
      // Menunggu selama 2 detik. Ini memberi waktu pada SplashScreen untuk tampil selama 2 detik sebelum melanjutkan.
      await tester.pump(Duration(seconds: 2));
      // Memastikan bahwa SplashScreen dirender dan hanya ada satu widget SplashScreen yang ditemukan.
      expect(find.byType(SplashScreen), findsOneWidget);
      // Menunggu selama 2 detik. Ini memberi waktu pada SplashScreen untuk tampil selama 2 detik sebelum melanjutkan.
      await tester.pump(Duration(seconds: 2));
      // Menjalankan siklus build selanjutnya dan menunggu sampai tidak ada lagi animasi atau tindakan yang tertunda dalam widget tree.
      await tester.pumpAndSettle();
      // Memastikan bahwa widget GetMaterialApp dirender dan hanya ada satu widget GetMaterialApp yang ditemukan.
      expect(find.byType(GetMaterialApp), findsOneWidget);

      // Mendapatkan widget GetMaterialApp dan memastikan bahwa route awal (initialRoute) adalah Routes.LOGIN,
      // menunjukkan navigasi ke halaman login setelah SplashScreen.
      final getApp = tester.widget<GetMaterialApp>(find.byType(GetMaterialApp));
      expect(getApp.initialRoute, equals(Routes.LOGIN));
    });
  });
}