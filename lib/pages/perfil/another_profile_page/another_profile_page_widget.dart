import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_event/empty_event_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'another_profile_page_model.dart';
export 'another_profile_page_model.dart';

class AnotherProfilePageWidget extends StatefulWidget {
  const AnotherProfilePageWidget({
    super.key,
    required this.profile,
  });

  final UserRecord? profile;

  static String routeName = 'anotherProfilePage';
  static String routePath = '/anotherProfilePage';

  @override
  State<AnotherProfilePageWidget> createState() =>
      _AnotherProfilePageWidgetState();
}

class _AnotherProfilePageWidgetState extends State<AnotherProfilePageWidget> {
  late AnotherProfilePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AnotherProfilePageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderRadius: 30.0,
                                        buttonSize: 48.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        icon: Icon(
                                          Icons.arrow_back,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 29.0,
                                        ),
                                        onPressed: () async {
                                          context.safePop();
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 50.0, 0.0),
                                          child: Text(
                                            'Perfil',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium
                                                            .fontStyle,
                                                  ),
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if (widget.profile?.isDivulgador == true)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 2.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Divulgador',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () {
                                            print('Button pressed ...');
                                          },
                                          text: '5,0',
                                          icon: Icon(
                                            Icons.star,
                                            size: 18.0,
                                          ),
                                          options: FFButtonOptions(
                                            height: 35.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    7.0, 0.0, 10.0, 0.0),
                                            iconAlignment: IconAlignment.start,
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleSmall
                                                .override(
                                                  font: GoogleFonts.interTight(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                                  color: Color(0xFFDA9433),
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: FlutterFlowIconButton(
                                            borderRadius: 30.0,
                                            buttonSize: 48.0,
                                            icon: Icon(
                                              Icons.ios_share,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 29.0,
                                            ),
                                            onPressed: () async {
                                              await Clipboard.setData(ClipboardData(
                                                  text:
                                                      'https://celebr8.flutterflow.app${getCurrentRoute(context)}'));
                                              ScaffoldMessenger.of(context)
                                                  .clearSnackBars();
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Link do evento copiado!',
                                                    style: TextStyle(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16.0,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0,
                            valueOrDefault<double>(
                              valueOrDefault<bool>(
                                          currentUserDocument?.isDivulgador,
                                          false) ==
                                      true
                                  ? 0.0
                                  : 10.0,
                              0.0,
                            ),
                            0.0,
                            0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0,
                                        valueOrDefault<double>(
                                          widget.profile?.isDivulgador == true
                                              ? 0.0
                                              : 15.0,
                                          0.0,
                                        ),
                                        0.0,
                                        0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 5.0, 16.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, -1.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                  child: Image.network(
                                                    widget.profile!.photoUrl,
                                                    width: 75.0,
                                                    height: 75.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(15.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            widget.profile
                                                                ?.displayName,
                                                            'Nome',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            widget.profile
                                                                ?.descricao,
                                                            'descrição',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              FlutterFlowIconButton(
                                                borderRadius: 30.0,
                                                buttonSize: 48.0,
                                                icon: Icon(
                                                  Icons
                                                      .calendar_view_day_rounded,
                                                  color: valueOrDefault<Color>(
                                                    _model.feedOption ==
                                                            'confirm'
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                  ),
                                                  size: 29.0,
                                                ),
                                                onPressed: () async {
                                                  _model.feedOption = 'confirm';
                                                  safeSetState(() {});
                                                },
                                              ),
                                              if (widget
                                                      .profile?.isDivulgador ==
                                                  true)
                                                FlutterFlowIconButton(
                                                  borderRadius: 30.0,
                                                  buttonSize: 48.0,
                                                  icon: Icon(
                                                    Icons.confirmation_num,
                                                    color:
                                                        valueOrDefault<Color>(
                                                      _model.feedOption ==
                                                              'divulgador'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                    ),
                                                    size: 29.0,
                                                  ),
                                                  onPressed: () async {
                                                    _model.feedOption =
                                                        'divulgador';
                                                    safeSetState(() {});
                                                  },
                                                ),
                                              if (widget
                                                      .profile?.isDivulgador ==
                                                  false)
                                                FlutterFlowIconButton(
                                                  borderRadius: 30.0,
                                                  buttonSize: 48.0,
                                                  icon: Icon(
                                                    Icons.history,
                                                    color:
                                                        valueOrDefault<Color>(
                                                      _model.feedOption ==
                                                              'history'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                    ),
                                                    size: 29.0,
                                                  ),
                                                  onPressed: () async {
                                                    _model.feedOption =
                                                        'history';
                                                    safeSetState(() {});
                                                  },
                                                ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (_model.feedOption == 'confirm')
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 10.0, 0.0, 0.0),
                              child: Text(
                                'Próximos eventos confirmados',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                          StreamBuilder<List<EventosConfirmacoesRecord>>(
                            stream: queryEventosConfirmacoesRecord(
                              queryBuilder: (eventosConfirmacoesRecord) =>
                                  eventosConfirmacoesRecord
                                      .where(
                                        'user',
                                        isEqualTo: widget.profile?.reference,
                                      )
                                      .where(
                                        'data_evento',
                                        isGreaterThanOrEqualTo:
                                            getCurrentTimestamp,
                                      )
                                      .orderBy('data_evento'),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<EventosConfirmacoesRecord>
                                  listViewEventosConfirmacoesRecordList =
                                  snapshot.data!;
                              if (listViewEventosConfirmacoesRecordList
                                  .isEmpty) {
                                return EmptyEventWidget();
                              }

                              return ListView.separated(
                                padding: EdgeInsets.symmetric(vertical: 10.0),
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewEventosConfirmacoesRecordList
                                    .length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 10.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewEventosConfirmacoesRecord =
                                      listViewEventosConfirmacoesRecordList[
                                          listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: StreamBuilder<EventosRecord>(
                                      stream: EventosRecord.getDocument(
                                          listViewEventosConfirmacoesRecord
                                              .evento!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }

                                        final containerEventosRecord =
                                            snapshot.data!;

                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              EventPageWidget.routeName,
                                              queryParameters: {
                                                'evento': serializeParam(
                                                  containerEventosRecord,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'evento':
                                                    containerEventosRecord,
                                              },
                                            );
                                          },
                                          child: Container(
                                            width: 100.0,
                                            height: 115.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 5.0, 10.0, 5.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    child: Image.network(
                                                      containerEventosRecord
                                                          .foto,
                                                      width: 90.0,
                                                      height: 90.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  3.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: AutoSizeText(
                                                              valueOrDefault<
                                                                  String>(
                                                                containerEventosRecord
                                                                    .titulo,
                                                                'Nome evento',
                                                              ).maybeHandleOverflow(
                                                                maxChars: 22,
                                                                replacement:
                                                                    '…',
                                                              ),
                                                              minFontSize: 16.0,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    fontSize:
                                                                        18.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerEventosRecord
                                                                .cidade
                                                                .maybeHandleOverflow(
                                                              maxChars: 22,
                                                              replacement: '…',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        1.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              '${dateTimeFormat(
                                                                "EEEE",
                                                                containerEventosRecord
                                                                    .dataInicio,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              )} ${dateTimeFormat(
                                                                "HH:mm",
                                                                containerEventosRecord
                                                                    .dataInicio,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              )}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        15.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: StreamBuilder<
                                                                List<
                                                                    EventosConfirmacoesRecord>>(
                                                              stream:
                                                                  queryEventosConfirmacoesRecord(
                                                                queryBuilder:
                                                                    (eventosConfirmacoesRecord) =>
                                                                        eventosConfirmacoesRecord
                                                                            .where(
                                                                  'evento',
                                                                  isEqualTo:
                                                                      listViewEventosConfirmacoesRecord
                                                                          .evento,
                                                                ),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<EventosConfirmacoesRecord>
                                                                    textEventosConfirmacoesRecordList =
                                                                    snapshot
                                                                        .data!;

                                                                return Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    '${textEventosConfirmacoesRecordList.length.toString()} confirmados',
                                                                    '0  confirmados',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        width: 48.0,
                                                        height: 48.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      50.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                    "MMM",
                                                                    containerEventosRecord
                                                                        .dataInicio,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  'JAN',
                                                                ).maybeHandleOverflow(
                                                                  maxChars: 3,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Color(
                                                                          0xFFFF4848),
                                                                      fontSize:
                                                                          11.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                dateTimeFormat(
                                                                  "d",
                                                                  containerEventosRecord
                                                                      .dataInicio,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                '0',
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        22.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: StreamBuilder<
                                                            List<
                                                                EventosConfirmacoesRecord>>(
                                                          stream:
                                                              queryEventosConfirmacoesRecord(
                                                            queryBuilder:
                                                                (eventosConfirmacoesRecord) =>
                                                                    eventosConfirmacoesRecord
                                                                        .where(
                                                                          'user',
                                                                          isEqualTo:
                                                                              currentUserReference,
                                                                        )
                                                                        .where(
                                                                          'evento',
                                                                          isEqualTo:
                                                                              containerEventosRecord.reference,
                                                                        ),
                                                            singleRecord: true,
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<EventosConfirmacoesRecord>
                                                                miniConfirmButtonEventosConfirmacoesRecordList =
                                                                snapshot.data!;
                                                            final miniConfirmButtonEventosConfirmacoesRecord =
                                                                miniConfirmButtonEventosConfirmacoesRecordList
                                                                        .isNotEmpty
                                                                    ? miniConfirmButtonEventosConfirmacoesRecordList
                                                                        .first
                                                                    : null;

                                                            return FlutterFlowIconButton(
                                                              borderRadius:
                                                                  30.0,
                                                              buttonSize: 48.0,
                                                              fillColor:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                miniConfirmButtonEventosConfirmacoesRecord !=
                                                                        null
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                              ),
                                                              icon: Icon(
                                                                Icons
                                                                    .emoji_people,
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  miniConfirmButtonEventosConfirmacoesRecord !=
                                                                          null
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                                size: 29.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                if ((miniConfirmButtonEventosConfirmacoesRecord
                                                                            ?.user ==
                                                                        currentUserReference) &&
                                                                    (miniConfirmButtonEventosConfirmacoesRecord
                                                                            ?.evento ==
                                                                        containerEventosRecord
                                                                            .reference)) {
                                                                  await miniConfirmButtonEventosConfirmacoesRecord!
                                                                      .reference
                                                                      .delete();
                                                                } else {
                                                                  await EventosConfirmacoesRecord
                                                                      .collection
                                                                      .doc()
                                                                      .set(
                                                                          createEventosConfirmacoesRecordData(
                                                                        user:
                                                                            currentUserReference,
                                                                        evento:
                                                                            containerEventosRecord.reference,
                                                                        horaConfirmacao:
                                                                            getCurrentTimestamp,
                                                                        dataEvento:
                                                                            containerEventosRecord.dataInicio,
                                                                      ));
                                                                }
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                if (_model.feedOption == 'history')
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 10.0, 0.0, 0.0),
                              child: Text(
                                'Eventos passados confirmados',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                          StreamBuilder<List<EventosConfirmacoesRecord>>(
                            stream: queryEventosConfirmacoesRecord(
                              queryBuilder: (eventosConfirmacoesRecord) =>
                                  eventosConfirmacoesRecord
                                      .where(
                                        'user',
                                        isEqualTo: widget.profile?.reference,
                                      )
                                      .where(
                                        'data_evento',
                                        isLessThanOrEqualTo:
                                            getCurrentTimestamp,
                                      )
                                      .orderBy('data_evento'),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<EventosConfirmacoesRecord>
                                  listViewEventosConfirmacoesRecordList =
                                  snapshot.data!;
                              if (listViewEventosConfirmacoesRecordList
                                  .isEmpty) {
                                return EmptyEventWidget();
                              }

                              return ListView.separated(
                                padding: EdgeInsets.symmetric(vertical: 10.0),
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewEventosConfirmacoesRecordList
                                    .length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 10.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewEventosConfirmacoesRecord =
                                      listViewEventosConfirmacoesRecordList[
                                          listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: StreamBuilder<EventosRecord>(
                                      stream: EventosRecord.getDocument(
                                          listViewEventosConfirmacoesRecord
                                              .evento!),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }

                                        final containerEventosRecord =
                                            snapshot.data!;

                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              EventPageWidget.routeName,
                                              queryParameters: {
                                                'evento': serializeParam(
                                                  containerEventosRecord,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'evento':
                                                    containerEventosRecord,
                                              },
                                            );
                                          },
                                          child: Container(
                                            width: 100.0,
                                            height: 115.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 5.0, 10.0, 5.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    child: Image.network(
                                                      containerEventosRecord
                                                          .foto,
                                                      width: 90.0,
                                                      height: 90.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  3.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: AutoSizeText(
                                                              valueOrDefault<
                                                                  String>(
                                                                containerEventosRecord
                                                                    .titulo,
                                                                'Nome evento',
                                                              ).maybeHandleOverflow(
                                                                maxChars: 22,
                                                                replacement:
                                                                    '…',
                                                              ),
                                                              minFontSize: 16.0,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    fontSize:
                                                                        18.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                          Text(
                                                            containerEventosRecord
                                                                .cidade
                                                                .maybeHandleOverflow(
                                                              maxChars: 22,
                                                              replacement: '…',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        1.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              '${dateTimeFormat(
                                                                "EEEE",
                                                                containerEventosRecord
                                                                    .dataInicio,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              )} ${dateTimeFormat(
                                                                "HH:mm",
                                                                containerEventosRecord
                                                                    .dataInicio,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              )}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        15.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FutureBuilder<
                                                                    int>(
                                                              future:
                                                                  queryEventosConfirmacoesRecordCount(
                                                                queryBuilder:
                                                                    (eventosConfirmacoesRecord) =>
                                                                        eventosConfirmacoesRecord
                                                                            .where(
                                                                  'evento',
                                                                  isEqualTo:
                                                                      listViewEventosConfirmacoesRecord
                                                                          .evento,
                                                                ),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                int textCount =
                                                                    snapshot
                                                                        .data!;

                                                                return Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    '${textCount.toString()} confirmados',
                                                                    '0  confirmados',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        width: 48.0,
                                                        height: 48.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      50.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  dateTimeFormat(
                                                                    "MMM",
                                                                    containerEventosRecord
                                                                        .dataInicio,
                                                                    locale: FFLocalizations.of(
                                                                            context)
                                                                        .languageCode,
                                                                  ),
                                                                  'JAN',
                                                                ).maybeHandleOverflow(
                                                                  maxChars: 3,
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Color(
                                                                          0xFFFF4848),
                                                                      fontSize:
                                                                          11.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                dateTimeFormat(
                                                                  "d",
                                                                  containerEventosRecord
                                                                      .dataInicio,
                                                                  locale: FFLocalizations.of(
                                                                          context)
                                                                      .languageCode,
                                                                ),
                                                                '0',
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        22.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: StreamBuilder<
                                                            List<
                                                                EventosConfirmacoesRecord>>(
                                                          stream:
                                                              queryEventosConfirmacoesRecord(
                                                            queryBuilder:
                                                                (eventosConfirmacoesRecord) =>
                                                                    eventosConfirmacoesRecord
                                                                        .where(
                                                                          'user',
                                                                          isEqualTo:
                                                                              currentUserReference,
                                                                        )
                                                                        .where(
                                                                          'evento',
                                                                          isEqualTo:
                                                                              containerEventosRecord.reference,
                                                                        ),
                                                            singleRecord: true,
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<EventosConfirmacoesRecord>
                                                                miniConfirmButtonEventosConfirmacoesRecordList =
                                                                snapshot.data!;
                                                            final miniConfirmButtonEventosConfirmacoesRecord =
                                                                miniConfirmButtonEventosConfirmacoesRecordList
                                                                        .isNotEmpty
                                                                    ? miniConfirmButtonEventosConfirmacoesRecordList
                                                                        .first
                                                                    : null;

                                                            return FlutterFlowIconButton(
                                                              borderRadius:
                                                                  30.0,
                                                              buttonSize: 48.0,
                                                              fillColor:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                miniConfirmButtonEventosConfirmacoesRecord !=
                                                                        null
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiary,
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                              ),
                                                              disabledColor:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                miniConfirmButtonEventosConfirmacoesRecord !=
                                                                        null
                                                                    ? Color(
                                                                        0xFF99BFE8)
                                                                    : Color(
                                                                        0xFFF5F5F5),
                                                                Color(
                                                                    0xFFF5F5F5),
                                                              ),
                                                              disabledIconColor:
                                                                  valueOrDefault<
                                                                      Color>(
                                                                miniConfirmButtonEventosConfirmacoesRecord !=
                                                                        null
                                                                    ? Color(
                                                                        0xFFEAF3FB)
                                                                    : Color(
                                                                        0xFFB0B0B0),
                                                                Color(
                                                                    0xFFB0B0B0),
                                                              ),
                                                              icon: Icon(
                                                                Icons
                                                                    .emoji_people,
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  miniConfirmButtonEventosConfirmacoesRecord !=
                                                                          null
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                ),
                                                                size: 29.0,
                                                              ),
                                                              onPressed: (getCurrentTimestamp >
                                                                      containerEventosRecord
                                                                          .dataInicio!)
                                                                  ? null
                                                                  : () async {
                                                                      if ((miniConfirmButtonEventosConfirmacoesRecord?.user ==
                                                                              currentUserReference) &&
                                                                          (miniConfirmButtonEventosConfirmacoesRecord?.evento ==
                                                                              containerEventosRecord.reference)) {
                                                                        await miniConfirmButtonEventosConfirmacoesRecord!
                                                                            .reference
                                                                            .delete();
                                                                      } else {
                                                                        await EventosConfirmacoesRecord
                                                                            .collection
                                                                            .doc()
                                                                            .set(createEventosConfirmacoesRecordData(
                                                                              user: currentUserReference,
                                                                              evento: containerEventosRecord.reference,
                                                                              horaConfirmacao: getCurrentTimestamp,
                                                                              dataEvento: containerEventosRecord.dataInicio,
                                                                            ));
                                                                      }
                                                                    },
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                if (_model.feedOption == 'divulgador')
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15.0, 10.0, 0.0, 0.0),
                              child: Text(
                                'Eventos organizados',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ),
                          StreamBuilder<List<EventosRecord>>(
                            stream: queryEventosRecord(
                              queryBuilder: (eventosRecord) => eventosRecord
                                  .where(
                                    'divulgador',
                                    isEqualTo: widget.profile?.reference,
                                  )
                                  .orderBy('data_inicio', descending: true),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<EventosRecord> listViewEventosRecordList =
                                  snapshot.data!;
                              if (listViewEventosRecordList.isEmpty) {
                                return EmptyEventWidget();
                              }

                              return ListView.separated(
                                padding: EdgeInsets.symmetric(vertical: 10.0),
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: listViewEventosRecordList.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 10.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewEventosRecord =
                                      listViewEventosRecordList[listViewIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          EventPageWidget.routeName,
                                          queryParameters: {
                                            'evento': serializeParam(
                                              listViewEventosRecord,
                                              ParamType.Document,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            'evento': listViewEventosRecord,
                                          },
                                        );
                                      },
                                      child: Container(
                                        width: 100.0,
                                        height: 115.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 5.0, 10.0, 5.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                child: Image.network(
                                                  listViewEventosRecord.foto,
                                                  width: 90.0,
                                                  height: 90.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 3.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: AutoSizeText(
                                                          listViewEventosRecord
                                                              .titulo
                                                              .maybeHandleOverflow(
                                                            maxChars: 22,
                                                            replacement: '…',
                                                          ),
                                                          minFontSize: 16.0,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      Text(
                                                        listViewEventosRecord
                                                            .cidade
                                                            .maybeHandleOverflow(
                                                          maxChars: 22,
                                                          replacement: '…',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    1.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '${dateTimeFormat(
                                                            "EEEE",
                                                            listViewEventosRecord
                                                                .dataInicio,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )} ${dateTimeFormat(
                                                            "HH:mm",
                                                            listViewEventosRecord
                                                                .dataInicio,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          )}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: StreamBuilder<
                                                            List<
                                                                EventosConfirmacoesRecord>>(
                                                          stream:
                                                              queryEventosConfirmacoesRecord(
                                                            queryBuilder:
                                                                (eventosConfirmacoesRecord) =>
                                                                    eventosConfirmacoesRecord
                                                                        .where(
                                                              'evento',
                                                              isEqualTo:
                                                                  listViewEventosRecord
                                                                      .reference,
                                                            ),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50.0,
                                                                  height: 50.0,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    valueColor:
                                                                        AlwaysStoppedAnimation<
                                                                            Color>(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<EventosConfirmacoesRecord>
                                                                textEventosConfirmacoesRecordList =
                                                                snapshot.data!;

                                                            return Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                '${valueOrDefault<String>(
                                                                  textEventosConfirmacoesRecordList
                                                                      .length
                                                                      .toString(),
                                                                  '0',
                                                                )} confirmados',
                                                                '0  confirmados',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    width: 48.0,
                                                    height: 48.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50.0),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              dateTimeFormat(
                                                                "MMM",
                                                                listViewEventosRecord
                                                                    .dataInicio,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ),
                                                              'JAN',
                                                            ).maybeHandleOverflow(
                                                              maxChars: 3,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFFFF4848),
                                                                  fontSize:
                                                                      11.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            dateTimeFormat(
                                                              "d",
                                                              listViewEventosRecord
                                                                  .dataInicio,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            '0',
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 22.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: StreamBuilder<
                                                        List<
                                                            EventosConfirmacoesRecord>>(
                                                      stream:
                                                          queryEventosConfirmacoesRecord(
                                                        queryBuilder:
                                                            (eventosConfirmacoesRecord) =>
                                                                eventosConfirmacoesRecord
                                                                    .where(
                                                                      'user',
                                                                      isEqualTo:
                                                                          currentUserReference,
                                                                    )
                                                                    .where(
                                                                      'evento',
                                                                      isEqualTo:
                                                                          listViewEventosRecord
                                                                              .reference,
                                                                    ),
                                                        singleRecord: true,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  CircularProgressIndicator(
                                                                valueColor:
                                                                    AlwaysStoppedAnimation<
                                                                        Color>(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EventosConfirmacoesRecord>
                                                            miniConfirmButtonEventosConfirmacoesRecordList =
                                                            snapshot.data!;
                                                        final miniConfirmButtonEventosConfirmacoesRecord =
                                                            miniConfirmButtonEventosConfirmacoesRecordList
                                                                    .isNotEmpty
                                                                ? miniConfirmButtonEventosConfirmacoesRecordList
                                                                    .first
                                                                : null;

                                                        return FlutterFlowIconButton(
                                                          borderRadius: 30.0,
                                                          buttonSize: 48.0,
                                                          fillColor:
                                                              valueOrDefault<
                                                                  Color>(
                                                            miniConfirmButtonEventosConfirmacoesRecord !=
                                                                    null
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary
                                                                : FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiary,
                                                          ),
                                                          disabledColor:
                                                              valueOrDefault<
                                                                  Color>(
                                                            miniConfirmButtonEventosConfirmacoesRecord !=
                                                                    null
                                                                ? Color(
                                                                    0xFF99BFE8)
                                                                : Color(
                                                                    0xFFF5F5F5),
                                                            Color(0xFFF5F5F5),
                                                          ),
                                                          disabledIconColor:
                                                              valueOrDefault<
                                                                  Color>(
                                                            miniConfirmButtonEventosConfirmacoesRecord !=
                                                                    null
                                                                ? Color(
                                                                    0xFFEAF3FB)
                                                                : Color(
                                                                    0xFFB0B0B0),
                                                            Color(0xFFB0B0B0),
                                                          ),
                                                          icon: Icon(
                                                            Icons.emoji_people,
                                                            color:
                                                                valueOrDefault<
                                                                    Color>(
                                                              miniConfirmButtonEventosConfirmacoesRecord !=
                                                                      null
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryText,
                                                            ),
                                                            size: 29.0,
                                                          ),
                                                          onPressed: (getCurrentTimestamp >
                                                                  listViewEventosRecord
                                                                      .dataInicio!)
                                                              ? null
                                                              : () async {
                                                                  if ((miniConfirmButtonEventosConfirmacoesRecord
                                                                              ?.user ==
                                                                          currentUserReference) &&
                                                                      (miniConfirmButtonEventosConfirmacoesRecord
                                                                              ?.evento ==
                                                                          listViewEventosRecord
                                                                              .reference)) {
                                                                    await miniConfirmButtonEventosConfirmacoesRecord!
                                                                        .reference
                                                                        .delete();
                                                                  } else {
                                                                    await EventosConfirmacoesRecord
                                                                        .collection
                                                                        .doc()
                                                                        .set(
                                                                            createEventosConfirmacoesRecordData(
                                                                          user:
                                                                              currentUserReference,
                                                                          evento:
                                                                              listViewEventosRecord.reference,
                                                                          horaConfirmacao:
                                                                              getCurrentTimestamp,
                                                                          dataEvento:
                                                                              listViewEventosRecord.dataInicio,
                                                                        ));
                                                                  }
                                                                },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
