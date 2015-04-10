part of TeamPandaApi;

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

  @ApiResource(name: 'admins')
  AdminsResources adminsResources = new AdminsResources();
}