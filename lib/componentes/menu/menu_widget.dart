import '/flutter_flow/ff_builtin_enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  late MenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: (FFMainAxisAlignment.end).flutterValue,
      children: [
        Divider(
          thickness: 2.0,
          color: FlutterFlowTheme.of(context).colorBorde,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: (FFMainAxisAlignment.spaceEvenly).flutterValue,
            crossAxisAlignment: (FFCrossAxisAlignment.center).flutterValue,
            textBaseline: TextBaseline.alphabetic,
            children: [
              FFButtonWidget(
                onPressed: () async {
                  FFAppState().paginaActual = 'agenda';
                  safeSetState(() {});

                  context.pushNamed(AgendaPageWidget.routeName);
                },
                text: 'Agenda',
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 0.22,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).background,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontStyle,
                        ),
                        color: FFAppState().paginaActual == 'agenda'
                            ? FlutterFlowTheme.of(context).darkVibrantColor
                            : FlutterFlowTheme.of(context)
                                .colorSecundarioTextos,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FFAppState().paginaActual == 'mas'
                        ? FlutterFlowTheme.of(context).colorBorde
                        : FlutterFlowTheme.of(context).background,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  FFAppState().paginaActual = 'clientas';
                  safeSetState(() {});

                  context.pushNamed(ClientaPageWidget.routeName);
                },
                text: 'Clientas',
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 0.22,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FFAppState().paginaActual == 'clientas'
                      ? FlutterFlowTheme.of(context).colorBorde
                      : FlutterFlowTheme.of(context).background,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontStyle,
                        ),
                        color: FFAppState().paginaActual == 'clientas'
                            ? FlutterFlowTheme.of(context).darkVibrantColor
                            : FlutterFlowTheme.of(context)
                                .colorSecundarioTextos,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  FFAppState().paginaActual = 'cobros';
                  safeSetState(() {});

                  context.pushNamed(CobrosPageWidget.routeName);
                },
                text: 'Cobros',
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 0.22,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FFAppState().paginaActual == 'cobros'
                      ? FlutterFlowTheme.of(context).colorBorde
                      : FlutterFlowTheme.of(context).background,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontStyle,
                        ),
                        color: FFAppState().paginaActual == 'cobros'
                            ? FlutterFlowTheme.of(context).darkVibrantColor
                            : FlutterFlowTheme.of(context)
                                .colorSecundarioTextos,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  FFAppState().paginaActual = 'mas';
                  safeSetState(() {});

                  context.pushNamed(AdministracionPageWidget.routeName);
                },
                text: 'Más',
                options: FFButtonOptions(
                  width: MediaQuery.sizeOf(context).width * 0.22,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FFAppState().paginaActual == 'mas'
                      ? FlutterFlowTheme.of(context).colorBorde
                      : FlutterFlowTheme.of(context).background,
                  textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontStyle,
                        ),
                        color: FFAppState().paginaActual == 'mas'
                            ? FlutterFlowTheme.of(context).botonesYEnlaces
                            : FlutterFlowTheme.of(context)
                                .colorSecundarioTextos,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelMedium.fontStyle,
                      ),
                  elevation: 0.0,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
