// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:cypressoft_task/app/app.dart';
import 'package:cypressoft_task/bootstrap.dart';
import 'package:cypressoft_task/data/repositories/api_repository.dart';
import 'package:flutter/widgets.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dataRepository = DataRepository();
  await dataRepository.initialize();
  bootstrap(() => App(
        dataRepository: dataRepository,
      ));
}
