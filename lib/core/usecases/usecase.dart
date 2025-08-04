abstract class Params {}

class NoParams extends Params {}

// For one-time operations (Future)
abstract class UseCase<Type, P extends Params> {
  Future<Type> call(P params);
}

// For continuous operations (Stream)
abstract class StreamUseCase<Type, P extends Params> {
  Stream<Type> call(P params);
}
