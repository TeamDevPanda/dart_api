part of TeamPandaApi;

class CreatePlateformesRequest {

}

class EditPlateformesRequest {

}

class PlateformesResources {

  @ApiMethod(path: 'plateformes', method: 'GET')
  VoidMessage getAll() {
    //  TODO: implement getAll
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'plateformes', method: 'POST')
  VoidMessage create(CreatePlateformesRequest req) {
    //  TODO: implement create
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'plateformes/{plateformes}', method: 'PUT')
  VoidMessage edit(String plateformes, EditPlateformesRequest req) {
    //  TODO: implement edit
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'plateformes/{plateformes}', method: 'DELETE')
  VoidMessage delete(String plateformes) {
    //  TODO: implement delete
    throw new NotImplementedError();
  }

  @ApiResource(name: 'settings')
  PlateformesSettingsResources plateformesSettingsResources = new PlateformesSettingsResources();

}