part of TeamPandaApi;

class MissingParameters extends RpcError {
  final List<String> fields;

  MissingParameters([List<String> this.fields = const []])
    : super(HttpStatus.BAD_REQUEST, "Missing parameters.", "Missing parameters.");
}