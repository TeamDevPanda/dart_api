part of TeamPandaApi;

class CreateUsersRequest {

}

class EditUsersRequest {

}

class LoginUsersRequest {

}

class UsersResources {

  @ApiMethod(path: 'users', method: 'GET')
  VoidMessage getAll({int limit, int offset}) {
    //  TODO: implement getAll
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'users/{id}', method: 'GET')
  VoidMessage getById(String id) {
    //  TODO: implement getById
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'users', method: 'POST')
  VoidMessage create(CreateUsersRequest req) {
    //  TODO: implement create
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'users/login', method: 'POST')
  VoidMessage login(LoginUsersRequest req) {
    //  TODO: implement login
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'users/{id}', method: 'PUT')
  VoidMessage edit(String id, EditUsersRequest req) {
    //  TODO: implement edit
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'users/{id}', method: 'DELETE')
  VoidMessage delete(String id) {
    //  TODO: implement delete
    throw new NotImplementedError();
  }

}