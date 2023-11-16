import 'package:flutter_test/flutter_test.dart';
import 'package:final_project_2023/app/modules/list/controllers/list_controller.dart';

void main() {
  group('ListController', () {
    late ListController listController;

    setUp(() {
      listController = ListController();
    });

    test('increment should increase the count by 1', () {
      // Arrange
      final initialCount = listController.count.value;

      // Act
      listController.increment();

      // Assert
      expect(listController.count.value, initialCount + 1);
    });

    test('onInit should initialize count to 0', () {
      // Act
      listController.onInit();

      // Assert
      expect(listController.count.value, 0);
    });

    test('onReady should do nothing specific for this controller', () {
      // Act
      listController.onReady();

      // Assert
      // Add assertions here if there are specific behaviors to check
    });

    test('onClose should do nothing specific for this controller', () {
      // Act
      listController.onClose();

      // Assert
      // Add assertions here if there are specific behaviors to check
    });
  });
}