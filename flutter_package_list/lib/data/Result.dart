
class Result<T> {

  Result._();

  bool isSuccessful() {return this is ResultSuccess;}

  T getValue() { return (this as ResultSuccess).value;}
  ResultException error() { return (this as ResultException);}

  factory Result.success(T value) = ResultSuccess;

  factory Result.failure(ResultException exception) = ResultError;
}

class ResultError<T> extends Result<T> {
  ResultError(this.exception) : super._();
  final ResultException exception;
}

class ResultSuccess<T> extends Result<T> {
  final T value;
  ResultSuccess(this.value) : super._();
}

class ResultException {
  final Exception exception;
  ResultException(String message) : this.exception = Exception(message);
}


// https://stackoverflow.com/questions/54317000/are-there-any-sealed-classes-alternatives-in-dart-2-0

