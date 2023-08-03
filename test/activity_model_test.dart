import 'package:flutter_test/flutter_test.dart';
import 'package:are_you_bored_flutter_app/data/model/activity_model.dart';

//fromJson creates ActivityModel instance from JSON: Este test verifica que la función fromJson pueda crear correctamente una instancia de ActivityModel a partir de un mapa JSON dado y que los campos se asignen correctamente.
//setupBackgroundType sets backgroundType correctly based on activity type: Este test verifica que el método setupBackgroundType establece correctamente el valor de backgroundType según el tipo de actividad proporcionado.

void main() {
  group('ActivityModel', () {
    test('fromJson creates ActivityModel instance from JSON', () {
      // Creamos un mapa JSON que simula la respuesta de la API.
      final json = {
        "activity": "Read a book",
        "type": "education",
        "participants": 1,
        "link": "https://example.com"
      };

      // Llamamos a la función estática fromJson para crear una instancia de ActivityModel.
      final activityModel = ActivityModel.fromJson(json);

      // Verificamos que los campos se asignen correctamente.
      expect(activityModel.activity, equals("Read a book"));
      expect(activityModel.type, equals("education"));
      expect(activityModel.participants, equals(1));
      expect(activityModel.link, equals("https://example.com"));

      // El campo backgroundType se establece por defecto en 0, por lo que verificamos que sea igual a 0.
      expect(activityModel.backgroundType, equals(0));
    });
    test(
        'setupBackgroundType sets backgroundType correctly based on activity type',
        () {
      // Creamos una instancia de ActivityModel con un tipo de actividad "education".
      final activityModel = ActivityModel(
          activity: "Some activity",
          type: "education",
          participants: 1,
          link: "");

      // Llamamos al método setupBackgroundType para establecer el campo backgroundType.
      activityModel.setupBackgroundType(activityModel);

      // Verificamos que el campo backgroundType se establezca correctamente según el tipo de actividad "education".
      expect(activityModel.backgroundType, equals(0));

      // Cambiamos el tipo de actividad a "music".
      activityModel.type = "music";
      activityModel.setupBackgroundType(activityModel);

      // Verificamos que el campo backgroundType se establezca correctamente según el nuevo tipo de actividad "music".
      expect(activityModel.backgroundType, equals(1));

      // Cambiamos el tipo de actividad a un valor desconocido "travel".
      activityModel.type = "travel";
      activityModel.setupBackgroundType(activityModel);

      // Verificamos que el campo backgroundType se establezca correctamente para un valor de tipo de actividad desconocido.
      expect(activityModel.backgroundType, equals(2));
    });
  });
}
