library TeamPandaApi;

import 'dart:io';
import 'dart:async';

import 'package:rpc/rpc.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:crypto/crypto.dart';

part 'resources/backoffices/backoffices.dart';
part 'resources/backoffices/admins/admins.dart';

part 'resources/plateformes/plateformes.dart';
part 'resources/plateformes/settings/settings.dart';

part 'resources/news/news.dart';

part 'resources/users/error/users_error.dart';
part 'resources/users/model/users_model.dart';
part 'resources/users/users.dart';

part 'shared/error/not_implemented.dart';
part 'shared/error/missing_parameters.dart';

@ApiClass(
    name: 'teampanda',
    version: '0.1'
)
class Api {

  @ApiResource(name: 'users')
  UsersResources usersResources = new UsersResources();

  @ApiResource(name: 'news')
  NewsResources newsResources = new NewsResources();

  @ApiResource(name: 'plateformes')
  PlateformesResources plateformesResources = new PlateformesResources();

  @ApiResource(name: 'backoffices')
  BackofficesResources backofficesResources = new BackofficesResources();
}