library TeamPandaApi;

import 'dart:io';

import 'package:rpc/rpc.dart';

part 'resources/backoffices/backoffices.dart';
part 'resources/backoffices/admins/admins.dart';

part 'resources/plateformes/plateformes.dart';
part 'resources/plateformes/settings/settings.dart';

part 'resources/news/news.dart';

part 'resources/users/users.dart';

part 'shared/error/not_implemented.dart';


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