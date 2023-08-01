import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:are_you_bored_flutter_app/data/data_provider/activity_provider.dart';

// Creamos un mock de http.Client utilizando la clase MockClient.
class MockClient extends Mock implements http.Client {}

void main() {
  group('ActivityProvider', () {
    late MockClient mockClient;

    setUp(() {
      mockClient = MockClient();
    });

    test('getRandomActivity returns valid response', () async {
      // Configuramos el mock para que devuelva una respuesta simulada.
      final mockResponse = http.Response('{"activity": "Some activity"}', 200);
      when(mockClient.get(Uri.parse("www.boredapi.com")))
          .thenAnswer((_) async => mockResponse);

      // Llamamos al método getRandomActivity con el mock del http.Client.
      final result = await ActivityProvider.getRandomActivity(
          {"type": "music", "participants": "1"});

      // Comprobamos que el resultado sea una cadena válida.
      expect(result, isNotNull);
      expect(result, isNotEmpty);
    });

    test('getRandomActivity throws exception for invalid response', () async {
      // Configuramos el mock para que devuelva una respuesta inválida.
      final mockResponse = http.Response('Invalid response', 500);
      when(mockClient.get(Uri.parse("www.boredapi.com")))
          .thenAnswer((_) async => mockResponse);

      // Llamamos al método getRandomActivity con el mock del http.Client.
      // El método debe lanzar una excepción debido a la respuesta inválida.
      expect(
          () => ActivityProvider.getRandomActivity(
              {"type": "music", "participants": "1"}),
          throwsException);
    });
  });
}
