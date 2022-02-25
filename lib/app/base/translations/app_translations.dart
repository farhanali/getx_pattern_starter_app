import 'package:getx_pattern_starter_app/app/base/translations/en_us.dart';
import 'package:getx_pattern_starter_app/app/base/translations/es_mx.dart';
import 'package:getx_pattern_starter_app/app/base/translations/pt_br.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'pt_BR': ptBR,
    'en_US': enUs,
    'es_mx': esMx,
  };
}
