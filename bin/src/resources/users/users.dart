part of TeamPandaApi;

class CreateUsersRequest {
  String login;
  String email;
  String password;
  String first_name;
  String last_name;
}

class CreateUsersResponse {
  String message;
}

class EditUsersRequest {

}

class LoginUsersRequest {

}

class UsersResources {

  @ApiMethod(path: 'users', method: 'GET')
  Future<VoidMessage> getAll({int limit, int offset}) async {
    //  TODO: implement getAll
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'users/{id}', method: 'GET')
  VoidMessage getById(String id) {
    //  TODO: implement getById
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'users', method: 'POST')
  Future<CreateUsersResponse> create(CreateUsersRequest req) async {
    await createClassicUsers(req);
    return new CreateUsersResponse()..message = "User create with success.";
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