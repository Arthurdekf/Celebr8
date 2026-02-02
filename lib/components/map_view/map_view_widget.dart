import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'map_view_model.dart';
export 'map_view_model.dart';

class MapViewWidget extends StatefulWidget {
  const MapViewWidget({
    super.key,
    required this.latLng,
  });

  final LatLng? latLng;

  @override
  State<MapViewWidget> createState() => _MapViewWidgetState();
}

class _MapViewWidgetState extends State<MapViewWidget> {
  late MapViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapViewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.0,
      height: 750.0,
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 330.0,
              height: 520.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Builder(builder: (context) {
                final _googleMapMarker = widget.latLng;
                return FlutterFlowGoogleMap(
                  controller: _model.googleMapsController,
                  onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
                  initialLocation: _model.googleMapsCenter ??= widget.latLng!,
                  markers: [
                    if (_googleMapMarker != null)
                      FlutterFlowMarker(
                        _googleMapMarker.serialize(),
                        _googleMapMarker,
                      ),
                  ],
                  markerColor: GoogleMarkerColor.violet,
                  mapType: MapType.normal,
                  style: GoogleMapStyle.standard,
                  initialZoom: 14.0,
                  allowInteraction: true,
                  allowZoom: true,
                  showZoomControls: true,
                  showLocation: true,
                  showCompass: false,
                  showMapToolbar: false,
                  showTraffic: false,
                  centerMapOnMarkerTap: true,
                );
              }),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: FlutterFlowIconButton(
              borderRadius: 30.0,
              buttonSize: 48.0,
              fillColor: Color(0xFFFF4747),
              icon: Icon(
                Icons.close,
                color: Color(0xFFFFDADA),
                size: 29.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
