part of auth_actions;

@freezed
abstract class SetDefaultAddress with _$SetDefaultAddress implements AppAction {
  const factory SetDefaultAddress({required AddressPoint address, required ActionResponse response}) = SetDefaultAddress$;

  const factory SetDefaultAddress.successful({required AddressPoint address}) = SetDefaultAddressSuccessful;

  @Implements(ErrorAction)
  const factory SetDefaultAddress.error(Object error) = SetDefaultAddressError;
}
