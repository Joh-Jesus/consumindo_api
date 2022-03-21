import 'package:consumindo_api/controllers/home_controller.dart';
import 'package:consumindo_api/services/dio_client.dart';
import 'package:consumindo_api/services/http_client.dart';
import 'package:consumindo_api/services/http_client_interface.dart';
import 'package:consumindo_api/services/json_placeholder_service.dart';
import 'package:consumindo_api/views/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        //Bind.singleton<IHttpClient>((i) => HttpPackageClient()),
        Bind.singleton<IHttpClient>((i) => DioClient()),
        Bind.singleton((i) => JsonPlaceHolderService(i())),
        Bind.singleton((i) => HomeController(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => HomePage()),
      ];
}
