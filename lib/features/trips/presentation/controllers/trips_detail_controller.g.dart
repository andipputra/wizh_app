// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trips_detail_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tripsDetailControllerHash() =>
    r'5f50f9d261312b5ae24e353f7ff0c0d14e40dcca';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$TripsDetailController
    extends BuildlessAutoDisposeAsyncNotifier<TripDetail?> {
  late final Trip tripData;

  FutureOr<TripDetail?> build(Trip tripData);
}

/// See also [TripsDetailController].
@ProviderFor(TripsDetailController)
const tripsDetailControllerProvider = TripsDetailControllerFamily();

/// See also [TripsDetailController].
class TripsDetailControllerFamily extends Family<AsyncValue<TripDetail?>> {
  /// See also [TripsDetailController].
  const TripsDetailControllerFamily();

  /// See also [TripsDetailController].
  TripsDetailControllerProvider call(Trip tripData) {
    return TripsDetailControllerProvider(tripData);
  }

  @override
  TripsDetailControllerProvider getProviderOverride(
    covariant TripsDetailControllerProvider provider,
  ) {
    return call(provider.tripData);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tripsDetailControllerProvider';
}

/// See also [TripsDetailController].
class TripsDetailControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          TripsDetailController,
          TripDetail?
        > {
  /// See also [TripsDetailController].
  TripsDetailControllerProvider(Trip tripData)
    : this._internal(
        () => TripsDetailController()..tripData = tripData,
        from: tripsDetailControllerProvider,
        name: r'tripsDetailControllerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$tripsDetailControllerHash,
        dependencies: TripsDetailControllerFamily._dependencies,
        allTransitiveDependencies:
            TripsDetailControllerFamily._allTransitiveDependencies,
        tripData: tripData,
      );

  TripsDetailControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.tripData,
  }) : super.internal();

  final Trip tripData;

  @override
  FutureOr<TripDetail?> runNotifierBuild(
    covariant TripsDetailController notifier,
  ) {
    return notifier.build(tripData);
  }

  @override
  Override overrideWith(TripsDetailController Function() create) {
    return ProviderOverride(
      origin: this,
      override: TripsDetailControllerProvider._internal(
        () => create()..tripData = tripData,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        tripData: tripData,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TripsDetailController, TripDetail?>
  createElement() {
    return _TripsDetailControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TripsDetailControllerProvider && other.tripData == tripData;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, tripData.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TripsDetailControllerRef
    on AutoDisposeAsyncNotifierProviderRef<TripDetail?> {
  /// The parameter `tripData` of this provider.
  Trip get tripData;
}

class _TripsDetailControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          TripsDetailController,
          TripDetail?
        >
    with TripsDetailControllerRef {
  _TripsDetailControllerProviderElement(super.provider);

  @override
  Trip get tripData => (origin as TripsDetailControllerProvider).tripData;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
