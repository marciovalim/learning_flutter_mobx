abstract class Usecase<Params, Result> {
  const Usecase();

  Result execute(Params params);
}
