import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'HomePage'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondary,
            automaticallyImplyLeading: false,
            title: Text(
              'Início',
              style: FlutterFlowTheme.of(context).headlineLarge,
            ),
            actions: [],
            centerTitle: false,
            elevation: 2.0,
          ),
          body: SafeArea(
            top: true,
            child: Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 8.0),
                                    child: Text(
                                      'Categorias em Alta',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 24.0, 8.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 160.0,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 40.0),
                                          child: PageView(
                                            controller: _model
                                                    .pageViewController1 ??=
                                                PageController(initialPage: 0),
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/32/600',
                                                  width: 300.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/390/600',
                                                  width: 300.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/833/600',
                                                  width: 300.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 16.0),
                                            child: smooth_page_indicator
                                                .SmoothPageIndicator(
                                              controller:
                                                  _model.pageViewController1 ??=
                                                      PageController(
                                                          initialPage: 0),
                                              count: 3,
                                              axisDirection: Axis.horizontal,
                                              onDotClicked: (i) async {
                                                await _model
                                                    .pageViewController1!
                                                    .animateToPage(
                                                  i,
                                                  duration: Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.ease,
                                                );
                                              },
                                              effect: smooth_page_indicator
                                                  .ExpandingDotsEffect(
                                                expansionFactor: 3.0,
                                                spacing: 8.0,
                                                radius: 16.0,
                                                dotWidth: 16.0,
                                                dotHeight: 8.0,
                                                dotColor: Color(0x4C324A4D),
                                                activeDotColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondary,
                                                paintStyle: PaintingStyle.fill,
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
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 676.0,
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 40.0),
                                        child: PageView(
                                          controller: _model
                                                  .pageViewController2 ??=
                                              PageController(initialPage: 0),
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'C.A.',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'HOME_PAGE_PAGE_Container_ug2l6rty_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Container_page_view');
                                                              await _model
                                                                  .pageViewController2
                                                                  ?.previousPage(
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        300),
                                                                curve:
                                                                    Curves.ease,
                                                              );
                                                            },
                                                            child: Container(
                                                              width: 32.0,
                                                              height: 16.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Leitor',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'HOME_PAGE_PAGE_Container_cmbk06xq_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Container_page_view');
                                                              await _model
                                                                  .pageViewController2
                                                                  ?.nextPage(
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        300),
                                                                curve:
                                                                    Curves.ease,
                                                              );
                                                            },
                                                            child: Container(
                                                              width: 32.0,
                                                              height: 16.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4C324A4D),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ].divide(SizedBox(
                                                      width: 32.0,
                                                    )),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    16.0),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          16.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        'Validações de Cadastro',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineMedium,
                                                                      ),
                                                                      Text(
                                                                        'Ver mais',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                              decoration: TextDecoration.underline,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                child: ListView(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  children: [
                                                                    Slidable(
                                                                      endActionPane:
                                                                          ActionPane(
                                                                        motion:
                                                                            const ScrollMotion(),
                                                                        extentRatio:
                                                                            0.25,
                                                                        children: [
                                                                          SlidableAction(
                                                                            label:
                                                                                'Detalhes',
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryOnSurface,
                                                                            icon:
                                                                                Icons.assignment_outlined,
                                                                            onPressed:
                                                                                (_) {
                                                                              print('SlidableActionWidget pressed ...');
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          ListTile(
                                                                        title:
                                                                            Text(
                                                                          'Matrícula: 524855',
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                              ),
                                                                        ),
                                                                        subtitle:
                                                                            Text(
                                                                          'Pedido em: 08/06/2023',
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                              ),
                                                                        ),
                                                                        trailing:
                                                                            Icon(
                                                                          Icons
                                                                              .fast_rewind_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        tileColor:
                                                                            FlutterFlowTheme.of(context).success,
                                                                        dense:
                                                                            true,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(15.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Slidable(
                                                                      endActionPane:
                                                                          ActionPane(
                                                                        motion:
                                                                            const ScrollMotion(),
                                                                        extentRatio:
                                                                            0.25,
                                                                        children: [
                                                                          SlidableAction(
                                                                            label:
                                                                                'Validar',
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).info,
                                                                            icon:
                                                                                Icons.done_all_rounded,
                                                                            onPressed:
                                                                                (_) {
                                                                              print('SlidableActionWidget pressed ...');
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          ListTile(
                                                                        title:
                                                                            Text(
                                                                          'SIAPE: 36589895',
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                              ),
                                                                        ),
                                                                        subtitle:
                                                                            Text(
                                                                          'Pedido em: 17/06/2023',
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                              ),
                                                                        ),
                                                                        trailing:
                                                                            Icon(
                                                                          Icons
                                                                              .fast_rewind_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        tileColor:
                                                                            FlutterFlowTheme.of(context).warning,
                                                                        dense:
                                                                            true,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(15.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Slidable(
                                                                      endActionPane:
                                                                          ActionPane(
                                                                        motion:
                                                                            const ScrollMotion(),
                                                                        extentRatio:
                                                                            0.25,
                                                                        children: [
                                                                          SlidableAction(
                                                                            label:
                                                                                'Detalhes',
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryOnSurface,
                                                                            icon:
                                                                                Icons.assignment_outlined,
                                                                            onPressed:
                                                                                (_) {
                                                                              print('SlidableActionWidget pressed ...');
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          ListTile(
                                                                        title:
                                                                            Text(
                                                                          'Matrícula: 875894',
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                              ),
                                                                        ),
                                                                        subtitle:
                                                                            Text(
                                                                          'Pedido em: 07/03/2023',
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                              ),
                                                                        ),
                                                                        trailing:
                                                                            Icon(
                                                                          Icons
                                                                              .fast_rewind_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        tileColor:
                                                                            FlutterFlowTheme.of(context).error,
                                                                        dense:
                                                                            true,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(15.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ].divide(
                                                                      SizedBox(
                                                                    height: 8.0,
                                                                  )),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    16.0),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          16.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Text(
                                                                        'Atendimentos',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineMedium,
                                                                      ),
                                                                      Text(
                                                                        'Ver mais',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                              decoration: TextDecoration.underline,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                child: ListView(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  children: [
                                                                    Slidable(
                                                                      endActionPane:
                                                                          ActionPane(
                                                                        motion:
                                                                            const ScrollMotion(),
                                                                        extentRatio:
                                                                            0.25,
                                                                        children: [
                                                                          SlidableAction(
                                                                            label:
                                                                                'Detalhes',
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryOnSurface,
                                                                            icon:
                                                                                Icons.assignment_outlined,
                                                                            onPressed:
                                                                                (_) {
                                                                              print('SlidableActionWidget pressed ...');
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          ListTile(
                                                                        title:
                                                                            Text(
                                                                          'Devolução',
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).primaryContainerVariant,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                              ),
                                                                        ),
                                                                        subtitle:
                                                                            Text(
                                                                          'Realizado em: 17/06/2023',
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                              ),
                                                                        ),
                                                                        trailing:
                                                                            Icon(
                                                                          Icons
                                                                              .fast_rewind_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryIcons,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        tileColor:
                                                                            FlutterFlowTheme.of(context).onContainerPrimary,
                                                                        dense:
                                                                            true,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(15.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Slidable(
                                                                      endActionPane:
                                                                          ActionPane(
                                                                        motion:
                                                                            const ScrollMotion(),
                                                                        extentRatio:
                                                                            0.25,
                                                                        children: [
                                                                          SlidableAction(
                                                                            label:
                                                                                'Detalhes',
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryOnSurface,
                                                                            icon:
                                                                                Icons.assignment_outlined,
                                                                            onPressed:
                                                                                (_) {
                                                                              print('SlidableActionWidget pressed ...');
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          ListTile(
                                                                        title:
                                                                            Text(
                                                                          'Empréstimo',
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).primaryContainerVariant,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                              ),
                                                                        ),
                                                                        subtitle:
                                                                            Text(
                                                                          'Realizado em: 17/06/2023',
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                              ),
                                                                        ),
                                                                        trailing:
                                                                            Icon(
                                                                          Icons
                                                                              .fast_rewind_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryIcons,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        tileColor:
                                                                            FlutterFlowTheme.of(context).onContainerPrimary,
                                                                        dense:
                                                                            true,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(15.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Slidable(
                                                                      endActionPane:
                                                                          ActionPane(
                                                                        motion:
                                                                            const ScrollMotion(),
                                                                        extentRatio:
                                                                            0.25,
                                                                        children: [
                                                                          SlidableAction(
                                                                            label:
                                                                                'Detalhes',
                                                                            backgroundColor:
                                                                                FlutterFlowTheme.of(context).primaryOnSurface,
                                                                            icon:
                                                                                Icons.assignment_outlined,
                                                                            onPressed:
                                                                                (_) {
                                                                              print('SlidableActionWidget pressed ...');
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          ListTile(
                                                                        title:
                                                                            Text(
                                                                          'Validação',
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).primaryContainerVariant,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                              ),
                                                                        ),
                                                                        subtitle:
                                                                            Text(
                                                                          'Realizado em: 17/06/2023',
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelLarge
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                              ),
                                                                        ),
                                                                        trailing:
                                                                            Icon(
                                                                          Icons
                                                                              .fast_rewind_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryIcons,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                        tileColor:
                                                                            FlutterFlowTheme.of(context).onContainerPrimary,
                                                                        dense:
                                                                            true,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(15.0),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ].divide(
                                                                      SizedBox(
                                                                    height: 8.0,
                                                                  )),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        16.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'Atrasos',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineMedium,
                                                                    ),
                                                                    Text(
                                                                      'Ver mais',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).labelLargeFamily,
                                                                            decoration:
                                                                                TextDecoration.underline,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: ListView(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                children: [
                                                                  Slidable(
                                                                    endActionPane:
                                                                        ActionPane(
                                                                      motion:
                                                                          const ScrollMotion(),
                                                                      extentRatio:
                                                                          0.25,
                                                                      children: [
                                                                        SlidableAction(
                                                                          label:
                                                                              'E-mail',
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).infoBlue,
                                                                          icon:
                                                                              Icons.email_rounded,
                                                                          onPressed:
                                                                              (_) {
                                                                            print('SlidableActionWidget pressed ...');
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        ListTile(
                                                                      title:
                                                                          Text(
                                                                        'Programação Shell Lin...',
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).onContainerTertiary,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                            ),
                                                                      ),
                                                                      subtitle:
                                                                          Text(
                                                                        'Atrasado há 3 dias',
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).onContainerTertiary,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                            ),
                                                                      ),
                                                                      trailing:
                                                                          Icon(
                                                                        Icons
                                                                            .fast_rewind_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .onContainerTertiary,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      tileColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .tertiary,
                                                                      dense:
                                                                          true,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Slidable(
                                                                    endActionPane:
                                                                        ActionPane(
                                                                      motion:
                                                                          const ScrollMotion(),
                                                                      extentRatio:
                                                                          0.25,
                                                                      children: [
                                                                        SlidableAction(
                                                                          label:
                                                                              'E-mail',
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).infoBlue,
                                                                          icon:
                                                                              Icons.email_rounded,
                                                                          onPressed:
                                                                              (_) {
                                                                            print('SlidableActionWidget pressed ...');
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        ListTile(
                                                                      title:
                                                                          Text(
                                                                        'Estrutura de Dados',
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).onContainerTertiary,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                            ),
                                                                      ),
                                                                      subtitle:
                                                                          Text(
                                                                        'Atrasado há 1 dias',
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).onContainerTertiary,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                            ),
                                                                      ),
                                                                      trailing:
                                                                          Icon(
                                                                        Icons
                                                                            .fast_rewind_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .onContainerTertiary,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      tileColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .tertiary,
                                                                      dense:
                                                                          true,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Slidable(
                                                                    endActionPane:
                                                                        ActionPane(
                                                                      motion:
                                                                          const ScrollMotion(),
                                                                      extentRatio:
                                                                          0.25,
                                                                      children: [
                                                                        SlidableAction(
                                                                          label:
                                                                              'E-mail',
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).infoBlue,
                                                                          icon:
                                                                              Icons.email_rounded,
                                                                          onPressed:
                                                                              (_) {
                                                                            print('SlidableActionWidget pressed ...');
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        ListTile(
                                                                      title:
                                                                          Text(
                                                                        'Agrupamento de comp...',
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).onContainerTertiary,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                            ),
                                                                      ),
                                                                      subtitle:
                                                                          Text(
                                                                        'Atrasado há 10 dias',
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).onContainerTertiary,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                            ),
                                                                      ),
                                                                      trailing:
                                                                          Icon(
                                                                        Icons
                                                                            .fast_rewind_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .onContainerTertiary,
                                                                        size:
                                                                            20.0,
                                                                      ),
                                                                      tileColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .tertiary,
                                                                      dense:
                                                                          true,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(
                                                                    SizedBox(
                                                                  height: 8.0,
                                                                )),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ].divide(SizedBox(
                                                  height: 16.0,
                                                )),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 16.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'C.A.',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'HOME_PAGE_PAGE_Container_b0w3uvno_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Container_page_view');
                                                              await _model
                                                                  .pageViewController2
                                                                  ?.previousPage(
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        300),
                                                                curve:
                                                                    Curves.ease,
                                                              );
                                                            },
                                                            child: Container(
                                                              width: 32.0,
                                                              height: 16.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4C324A4D),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Leitor',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              logFirebaseEvent(
                                                                  'HOME_PAGE_PAGE_Container_1xt1cugp_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'Container_page_view');
                                                              await _model
                                                                  .pageViewController2
                                                                  ?.nextPage(
                                                                duration: Duration(
                                                                    milliseconds:
                                                                        300),
                                                                curve:
                                                                    Curves.ease,
                                                              );
                                                            },
                                                            child: Container(
                                                              width: 32.0,
                                                              height: 16.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ].divide(SizedBox(
                                                      width: 32.0,
                                                    )),
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        16.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'Meus Empréstimos',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineMedium,
                                                                    ),
                                                                    Text(
                                                                      'Ver mais',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).labelLargeFamily,
                                                                            decoration:
                                                                                TextDecoration.underline,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: ListView(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                children: [
                                                                  Slidable(
                                                                    endActionPane:
                                                                        ActionPane(
                                                                      motion:
                                                                          const ScrollMotion(),
                                                                      extentRatio:
                                                                          0.25,
                                                                      children: [
                                                                        SlidableAction(
                                                                          label:
                                                                              'Renovar',
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).primaryOnSurface,
                                                                          icon:
                                                                              Icons.repeat_rounded,
                                                                          onPressed:
                                                                              (_) {
                                                                            print('SlidableActionWidget pressed ...');
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        ListTile(
                                                                      title:
                                                                          Text(
                                                                        'Livro 1',
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                            ),
                                                                      ),
                                                                      subtitle:
                                                                          Text(
                                                                        'Devolução: 31/06/2023',
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                            ),
                                                                      ),
                                                                      trailing:
                                                                          Icon(
                                                                        Icons
                                                                            .fast_rewind_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      tileColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .success,
                                                                      dense:
                                                                          false,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Slidable(
                                                                    endActionPane:
                                                                        ActionPane(
                                                                      motion:
                                                                          const ScrollMotion(),
                                                                      extentRatio:
                                                                          0.25,
                                                                      children: [
                                                                        SlidableAction(
                                                                          label:
                                                                              'Renovar',
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).primaryOnSurface,
                                                                          icon:
                                                                              Icons.repeat_rounded,
                                                                          onPressed:
                                                                              (_) {
                                                                            print('SlidableActionWidget pressed ...');
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        ListTile(
                                                                      title:
                                                                          Text(
                                                                        'Livro 2',
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                            ),
                                                                      ),
                                                                      subtitle:
                                                                          Text(
                                                                        'Devolução: 17/06/2023',
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                            ),
                                                                      ),
                                                                      trailing:
                                                                          Icon(
                                                                        Icons
                                                                            .fast_rewind_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      tileColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .warning,
                                                                      dense:
                                                                          false,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Slidable(
                                                                    endActionPane:
                                                                        ActionPane(
                                                                      motion:
                                                                          const ScrollMotion(),
                                                                      extentRatio:
                                                                          0.25,
                                                                      children: [
                                                                        SlidableAction(
                                                                          label:
                                                                              'Devolver',
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).warning,
                                                                          icon:
                                                                              Icons.camera_alt,
                                                                          onPressed:
                                                                              (_) {
                                                                            print('SlidableActionWidget pressed ...');
                                                                          },
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        ListTile(
                                                                      title:
                                                                          Text(
                                                                        'Livro 3',
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).titleLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                            ),
                                                                      ),
                                                                      subtitle:
                                                                          Text(
                                                                        'Devolução: 07/03/2023',
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelLargeFamily,
                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                            ),
                                                                      ),
                                                                      trailing:
                                                                          Icon(
                                                                        Icons
                                                                            .fast_rewind_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      tileColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .error,
                                                                      dense:
                                                                          false,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(15.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(
                                                                    SizedBox(
                                                                  height: 8.0,
                                                                )),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          16.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'Reservas',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium,
                                                                  ),
                                                                  Text(
                                                                    'Ver mais',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).labelLargeFamily,
                                                                          decoration:
                                                                              TextDecoration.underline,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            child: ListView(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              children: [
                                                                Slidable(
                                                                  endActionPane:
                                                                      ActionPane(
                                                                    motion:
                                                                        const ScrollMotion(),
                                                                    extentRatio:
                                                                        0.25,
                                                                    children: [
                                                                      SlidableAction(
                                                                        label:
                                                                            'Cancelar',
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).error,
                                                                        icon: Icons
                                                                            .clear_rounded,
                                                                        onPressed:
                                                                            (_) {
                                                                          print(
                                                                              'SlidableActionWidget pressed ...');
                                                                        },
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  child:
                                                                      ListTile(
                                                                    title: Text(
                                                                      'Livro 1',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                          ),
                                                                    ),
                                                                    subtitle:
                                                                        Text(
                                                                      'Devolução: 17/06/2023',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).labelLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                          ),
                                                                    ),
                                                                    trailing:
                                                                        Icon(
                                                                      Icons
                                                                          .fast_rewind_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                    tileColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                    dense:
                                                                        false,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              15.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Slidable(
                                                                  endActionPane:
                                                                      ActionPane(
                                                                    motion:
                                                                        const ScrollMotion(),
                                                                    extentRatio:
                                                                        0.25,
                                                                    children: [
                                                                      SlidableAction(
                                                                        label:
                                                                            'Cancelar',
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).error,
                                                                        icon: Icons
                                                                            .clear_rounded,
                                                                        onPressed:
                                                                            (_) {
                                                                          print(
                                                                              'SlidableActionWidget pressed ...');
                                                                        },
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  child:
                                                                      ListTile(
                                                                    title: Text(
                                                                      'Livro 2',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                          ),
                                                                    ),
                                                                    subtitle:
                                                                        Text(
                                                                      'Devolução: 17/06/2023',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).labelLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                          ),
                                                                    ),
                                                                    trailing:
                                                                        Icon(
                                                                      Icons
                                                                          .fast_rewind_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                    tileColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .warning,
                                                                    dense:
                                                                        false,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              15.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Slidable(
                                                                  endActionPane:
                                                                      ActionPane(
                                                                    motion:
                                                                        const ScrollMotion(),
                                                                    extentRatio:
                                                                        0.25,
                                                                    children: [
                                                                      SlidableAction(
                                                                        label:
                                                                            'Cancelar',
                                                                        backgroundColor:
                                                                            FlutterFlowTheme.of(context).error,
                                                                        icon: Icons
                                                                            .clear_rounded,
                                                                        onPressed:
                                                                            (_) {
                                                                          print(
                                                                              'SlidableActionWidget pressed ...');
                                                                        },
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  child:
                                                                      ListTile(
                                                                    title: Text(
                                                                      'Livro 3',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleLargeFamily),
                                                                          ),
                                                                    ),
                                                                    subtitle:
                                                                        Text(
                                                                      'Devolução: 17/06/2023',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).labelLargeFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelLargeFamily),
                                                                          ),
                                                                    ),
                                                                    trailing:
                                                                        Icon(
                                                                      Icons
                                                                          .fast_rewind_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                    tileColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .error,
                                                                    dense:
                                                                        false,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              15.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                height: 8.0,
                                                              )),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}