part of auth_actions;

@freezed
abstract class UpdateAddresses with _$UpdateAddresses implements AppAction {
  const factory UpdateAddresses({AddressPoint? add, AddressPoint? remove, AddressPoint? edit}) =
      UpdateAddresses$;

  const factory UpdateAddresses.successful({String? uid, AddressPoint? add, AddressPoint? remove, AddressPoint? edit}) =
      UpdateAddressesSuccessful;

  @Implements(ErrorAction)
  const factory UpdateAddresses.error(Object error) = UpdateAddressesError;
}
