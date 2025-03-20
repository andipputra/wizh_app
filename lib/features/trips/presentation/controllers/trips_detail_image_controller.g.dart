// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trips_detail_image_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tripsDetailImageControllerHash() =>
    r'80c94854a7eec40be3109256e1f7465058648cdf';

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

abstract class _$TripsDetailImageController
    extends BuildlessAutoDisposeNotifier<TripsDetailImageState> {
  late final Trip trip;

  TripsDetailImageState build(Trip trip);
}

/// See also [TripsDetailImageController].
@ProviderFor(TripsDetailImageController)
const tripsDetailImageControllerProvider = TripsDetailImageControllerFamily();

/// See also [TripsDetailImageController].
class TripsDetailImageControllerFamily extends Family<TripsDetailImageState> {
  /// See also [TripsDetailImageController].
  const TripsDetailImageControllerFamily();

  /// See also [TripsDetailImageController].
  TripsDetailImageControllerProvider call(Trip trip) {
    return TripsDetailImageControllerProvider(trip);
  }

  @override
  TripsDetailImageControllerProvider getProviderOverride(
    covariant TripsDetailImageControllerProvider provider,
  ) {
    return call(provider.trip);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tripsDetailImageControllerProvider';
}

/// See also [TripsDetailImageController].
class TripsDetailImageControllerProvider
    extends
        AutoDisposeNotifierProviderImpl<
          TripsDetailImageController,
          TripsDetailImageState
        > {
  /// See also [TripsDetailImageController].
  TripsDetailImageControllerProvider(Trip trip)
    : this._internal(
        () => TripsDetailImageController()..trip = trip,
        from: tripsDetailImageControllerProvider,
        name: r'tripsDetailImageControllerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$tripsDetailImageControllerHash,
        dependencies: TripsDetailImageControllerFamily._dependencies,
        allTransitiveDependencies:
            TripsDetailImageControllerFamily._allTransitiveDependencies,
        trip: trip,
      );

  TripsDetailImageControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.trip,
  }) : super.internal();

  final Trip trip;

  @override
  TripsDetailImageState runNotifierBuild(
    covariant TripsDetailImageController notifier,
  ) {
    return notifier.build(trip);
  }

  @override
  Override overrideWith(TripsDetailImageController Function() create) {
    return ProviderOverride(
      origin: this,
      override: TripsDetailImageControllerProvider._internal(
        () => create()..trip = trip,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        trip: trip,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<
    TripsDetailImageController,
    TripsDetailImageState
  >
  createElement() {
    return _TripsDetailImageControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TripsDetailImageControllerProvider && other.trip == trip;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, trip.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TripsDetailImageControllerRef
    on AutoDisposeNotifierProviderRef<TripsDetailImageState> {
  /// The parameter `trip` of this provider.
  Trip get trip;
}

class _TripsDetailImageControllerProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          TripsDetailImageController,
          TripsDetailImageState
        >
    with TripsDetailImageControllerRef {
  _TripsDetailImageControllerProviderElement(super.provider);

  @override
  Trip get trip => (origin as TripsDetailImageControllerProvider).trip;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
