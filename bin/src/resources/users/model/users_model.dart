part of TeamPandaApi;

class Users {
  ObjectId id;
  String email;
  String login;
  String password;
  bool state;
  DateTime last_login;
  String account_type;

  Users();
}

Future<Users> getUsersWithLoginAndCryptedPassword(String login, String crypted_password) async {
  Db db = new Db("mongodb://127.0.0.1/users");
  await db.open();
  DbCollection coll = db.collection("users");
  Map cursor = await coll.findOne(where.eq("login", login).and(where.eq("password", crypted_password)));
  if (!cursor.containsKey("login") || !cursor.containsKey("password") || !cursor.containsKey("email")
    || !cursor.containsKey("_id") || !cursor.containsKey("state") || !cursor.containsKey("last_login")
    || !cursor.containsKey("account_type")) {
    //  TODO: changer l'erreur pour coller avec l erreur
    print("pas de users");
    throw new InternalServerError();
  }
  Users users = new Users()
    ..id = cursor["_id"]
    ..email = cursor["email"]
    ..login = cursor["login"]
    ..password = cursor["password"]
    ..state = cursor["state"] == false ? false : true
    ..last_login = cursor["last_login"] != null ? DateTime().parse(cursor["last_login"]) : null
    ..account_type = cursor["account_type"];
  await db.close();
  if (users.state == -1) {
    print("users state invalide");
    //  TODO: changer l'erreur pour coller avec l erreur
    throw new InternalServerError();
  }
  return users;
}

Future<Users> createClassicUsers(CreateUsersRequest users_req) async {
  return await createUsers(users_req);
}

Future<Users> createUsers(CreateUsersRequest users_req, {String type: "classic"}) async {
  List<String> missing_parameters = <String>[];
  if (users_req.login == null) {
    missing_parameters.add("login");
  }
  if (users_req.email == null) {
    missing_parameters.add("email");
  }
  if (users_req.password == null) {
    missing_parameters.add("password");
  }
  if (users_req.first_name == null) {
    missing_parameters.add("first_name");
  }
  if (users_req.last_name == null) {
    missing_parameters.add("last_name");
  }
  if (missing_parameters.isNotEmpty) {
    throw new MissingParameters(missing_parameters);
  }
  Db db = new Db("mongodb://127.0.0.1/users");
  await db.open();
  DbCollection coll = db.collection("users");
  await coll.remove();
  SHA256 sha256 = new SHA256();
  sha256.add(users_req.password.codeUnits);
  String crypted_password = CryptoUtils.bytesToHex(sha256.close());
  Map document = <String, dynamic>{};
  document["login"] = users_req.login;
  document["email"] = users_req.email;
  document["password"] = crypted_password;
  document["account_type"] = type;
  document["state"] = false;
  document["last_login"] = null;
  Map data = await coll.insert(document);
  await db.close();
  if (!data.containsKey("err")) {
    print("pas reussi a inserer");
    //  TODO: changer l'erreur pour coller avec l erreur
    throw new InternalServerError();
  }
  Users users = await getUsersWithLoginAndCryptedPassword(users_req.login, crypted_password);
  //  TODO: inserer le first name last name ainsi que les valeur par default de tous les autres champs du user
  return users;
}