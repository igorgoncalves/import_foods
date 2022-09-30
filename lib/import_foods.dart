import 'package:import_foods/firebase_service.dart';
import 'package:import_foods/read_data.dart';

void import() async {
  final foods = await readFile('assert/taco_data.json');

  final requests = [for (var food in foods) create(food)];

  final eventStream = Stream.fromFutures(requests);

  await for (var event in eventStream) {
    print("Event received: $event");
  }
}
