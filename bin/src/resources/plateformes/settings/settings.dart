part of TeamPandaApi;

class CreatePlateformesSettingsRequest {

}

class EditPlateformesSettingsRequest {

}

class PlateformesSettingsResources {

  @ApiMethod(path: 'plateformes/{plateformes}/settings', method: 'GET')
  VoidMessage getAll(String plateformes) {
    //  TODO: implement getAll
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'plateformes/{plateformes}/settings', method: 'POST')
  VoidMessage create(String plateformes, CreatePlateformesSettingsRequest req) {
    //  TODO: implement create
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'plateformes/{plateformes}/settings/{settings}', method: 'PUT')
  VoidMessage edit(String plateformes, String settings, EditPlateformesSettingsRequest req) {
    //  TODO: implemennt edit
    throw new NotImplementedError();
  }

  @ApiMethod(path: 'plateformes/{plateformes}/settings/{settings}', method: 'DELETE')
  VoidMessage delete(String plateformes, String settings) {
    //  TODO: implement delete
    throw new NotImplementedError();
  }
}