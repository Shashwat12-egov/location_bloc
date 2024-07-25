// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:location/UI/LocationWidget.dart' as _i1;
import 'package:location/UI/WeatherReport.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LocationwidgetRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.LocationwidgetScreen(),
      );
    },
    WeatherRoute.name: (routeData) {
      final args = routeData.argsAs<WeatherRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.WeatherScreen(
          args.currentLocation,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.LocationwidgetScreen]
class LocationwidgetRoute extends _i3.PageRouteInfo<void> {
  const LocationwidgetRoute({List<_i3.PageRouteInfo>? children})
      : super(
          LocationwidgetRoute.name,
          initialChildren: children,
        );

  static const String name = 'LocationwidgetRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.WeatherScreen]
class WeatherRoute extends _i3.PageRouteInfo<WeatherRouteArgs> {
  WeatherRoute({
    required String currentLocation,
    _i4.Key? key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          WeatherRoute.name,
          args: WeatherRouteArgs(
            currentLocation: currentLocation,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'WeatherRoute';

  static const _i3.PageInfo<WeatherRouteArgs> page =
      _i3.PageInfo<WeatherRouteArgs>(name);
}

class WeatherRouteArgs {
  const WeatherRouteArgs({
    required this.currentLocation,
    this.key,
  });

  final String currentLocation;

  final _i4.Key? key;

  @override
  String toString() {
    return 'WeatherRouteArgs{currentLocation: $currentLocation, key: $key}';
  }
}
