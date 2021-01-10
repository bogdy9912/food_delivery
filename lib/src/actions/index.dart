abstract class AppActions {
  const AppActions();
}

abstract class ErrorActions implements AppActions{
  const ErrorActions();

  Object get error;
}
