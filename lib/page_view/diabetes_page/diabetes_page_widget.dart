import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/general/app_bar/app_bar_widget.dart';
import '/general/sidebar/sidebar_widget.dart';
import '/login/background/background_widget.dart';
import '/page_view/widget/patient_diabetes_widget/patient_diabetes_widget_widget.dart';
import '/page_view/widget/patine_lab_hb_a1_c_stack_chart_widget/patine_lab_hb_a1_c_stack_chart_widget_widget.dart';
import 'dart:ui';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'diabetes_page_model.dart';
export 'diabetes_page_model.dart';

class DiabetesPageWidget extends StatefulWidget {
  const DiabetesPageWidget({super.key, this.insideShell = false});

  final bool insideShell;

  static String routeName = 'DiabetesPage';
  static String routePath = '/diabetesPage';

  @override
  State<DiabetesPageWidget> createState() => _DiabetesPageWidgetState();
}

class _DiabetesPageWidgetState extends State<DiabetesPageWidget> {
  late DiabetesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiabetesPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.insideShell) return _buildPageContent(context);
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.7,
            child: wrapWithModel(
              model: _model.backgroundModel,
              updateCallback: () => safeSetState(() {}),
              updateOnChange: true,
              child: Hero(
                tag: 'bg',
                transitionOnUserGestures: true,
                child: Material(
                  color: Colors.transparent,
                  child: BackgroundWidget(),
                ),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Builder(
                builder: (context) => wrapWithModel(
                  model: _model.sidebarModel,
                  updateCallback: () => safeSetState(() {}),
                  updateOnChange: true,
                  child: SidebarWidget(
                    selet: 3,
                  ),
                ),
              ),
              Expanded(
                child: _buildPageContent(context),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPageContent(BuildContext context) {
    return ListView(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    0,
                    0,
                    16.0,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: StickyHeader(
                        overlapHeaders: false,
                        header: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.appBarModel,
                              updateCallback: () => safeSetState(() {}),
                              child: Hero(
                                tag: 'appbar',
                                transitionOnUserGestures: true,
                                child: Material(
                                  color: Colors.transparent,
                                  child: AppBarWidget(
                                    filteryear: true,
                                    filterprovince: false,
                                    filtermore: false,
                                    label:
                                        'ผู้ป่วยเบาหวานที่มีผลตรวจทางห้องปฏิบัติการ',
                                  ),
                                ),
                              ),
                            ),
                          ]
                              .divide(SizedBox(height: 16.0))
                              .around(SizedBox(height: 16.0)),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.patientDiabetesWidgetModel,
                              updateCallback: () => safeSetState(() {}),
                              child: PatientDiabetesWidgetWidget(),
                            ),
                            wrapWithModel(
                              model: _model.patineLabHbA1CStackChartWidgetModel,
                              updateCallback: () => safeSetState(() {}),
                              child: PatineLabHbA1CStackChartWidgetWidget(),
                            ),
                          ]
                              .divide(SizedBox(height: 16.0))
                              .around(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                );
  }
}
