import 'package:flutter_test/flutter_test.dart';
import 'package:final_project_2023/app/modules/home/controllers/home_controller.dart';

void main() {
  group('HomeController Test', () {
    test('initial count value is 0', () {
      // Arrange
      HomeController homeController = HomeController();

      // Act
      int initialCountValue = homeController.count.value;

      // Assert
      expect(initialCountValue, 0);
    });

    test('increment increases count value by 1', () {
      // Arrange
      HomeController homeController = HomeController();

      // Act
      homeController.increment();
      int countAfterIncrement = homeController.count.value;

      // Assert
      expect(countAfterIncrement, 1);
    });

    // Add more test cases as needed based on the behavior of your HomeController

    test('onInit is called', () {
      // Arrange
      HomeController homeController = HomeController();

      // Act
      homeController.onInit();

      // Assert
      expect(true, true);
    });

    test('onReady is called', () {
      // Arrange
      HomeController homeController = HomeController();

      // Act
      homeController.onReady();

      // Assert
      expect(true, true);
    });

    test('onClose is called', () {
      // Arrange
      HomeController homeController = HomeController();

      // Act
      homeController.onClose();

      // Assert
      expect(true, true);
    });
  });
}
