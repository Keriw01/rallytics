abstract class Params {}

class NoParams extends Params {}

abstract class UseCase<Type, P extends Params> {
  Future<Type> call(P params);
}
