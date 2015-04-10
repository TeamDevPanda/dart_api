part of TeamPandaApi;

class NotImplementedError extends RpcError {
  NotImplementedError([String msg = "Not Implemented."])
    : super(HttpStatus.NOT_IMPLEMENTED, 'Not Implemented', msg);
}