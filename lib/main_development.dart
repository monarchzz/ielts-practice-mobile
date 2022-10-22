// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:ielts_practice_mobile/app/app.dart';
import 'package:ielts_practice_mobile/bootstrap.dart';

void main() async {
  await dotenv.load(fileName: 'development.env');

  await bootstrap(() => const App());
}
