part of TeamPandaApi;

class CreateNewsRequest {

}

class EditNewsRequest {

}

class NewsResources {

  @ApiMethod(path: 'news', method: 'GET')
  VoidMessage getAll({int limit, int offset, String category}) {
    //  TODO: implement getAll
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'news/{id}', method: 'GET')
  VoidMessage getById(String id) {
    //  TODO: implement getById
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'news', method: 'POST')
  VoidMessage create(CreateNewsRequest req) {
    //  TODO: implement create
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'news/{id}', method: 'PUT')
  VoidMessage edit(String id, EditNewsRequest req) {
    //  TODO: implement edit
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'news/{id}', method: 'DELETE')
  VoidMessage delete(String id) {
    //  TODO: implement delete
    throw new NotImplementedError();
  }

}