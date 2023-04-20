import 'package:injectable/injectable.dart';

import 'Di.dart';
import 'Injection.config.dart';

@InjectableInit(asExtension: false)
void configureDependencies() => init(getIt);
