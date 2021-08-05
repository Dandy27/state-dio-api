import 'package:flutter_test/flutter_test.dart';
import 'package:triple/app/controllers/home_controllers.dart';

main() {
  test('deve preencher variável todos', () async {
    final controller = HomeControllers();
    expect(controller.state, HomeState.start);
    final todos = await controller.start();
    expect(controller.state, HomeState.success);

    print(todos);
  });
}
