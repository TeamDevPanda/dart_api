part of TeamPandaApi;

class LoginAdminsRequest {

}

class CreateAdminsRequest {

}

class EditAdminsRequest {

}

class AdminsResources {

  @ApiMethod(path: 'admins/login', method: 'POST')
  VoidMessage login(LoginAdminsRequest req) {
    //  TODO: implement login
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'admins', method: 'POST')
  VoidMessage create(CreateAdminsRequest req) {
    //  TODO: implement create
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'admins', method: 'PUT')
  VoidMessage edit(EditAdminsRequest req) {
    //  TODO: implement edit
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'admins/{id}', method: 'DELETE')
  VoidMessage delete(String id) {
    //  TODO: implement delete
    throw new NotImplementedError();
  }
}