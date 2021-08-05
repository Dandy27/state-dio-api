import 'package:flutter_test/flutter_test.dart';
import 'package:triple/app/repositories/todo_repository.dart';

void main() {
  test('deve trazer uma lista de todo movel ', () async {
    final repository = TodoRepository();
    final list = await repository.fetchTodos();
    print(list[1].title);
    expect(list[1].title, "quis ut nam facilis et officia qui");
  });
}
