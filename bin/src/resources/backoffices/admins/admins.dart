part of TeamPandaApi;

class LoginAdminsRequest {

}

class CreateAdminsRequest {

}

class EditAdminsRequest {

}

class AdminsResources {

  @ApiMethod(path: 'backoffices/admins/login', method: 'POST')
  VoidMessage login(LoginAdminsRequest req) {
    //  TODO: implement login
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'backoffices/admins', method: 'POST')
  VoidMessage create(CreateAdminsRequest req) {
    //  TODO: implement create
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'backoffices/admins', method: 'PUT')
  VoidMessage edit(EditAdminsRequest req) {
    //  TODO: implement edit
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'backoffices/admins/{id}', method: 'DELETE')
  VoidMessage delete(String id) {
    //  TODO: implement delete
    throw new NotImplementedError();
  }
}