import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'userprofile_model.dart';
export 'userprofile_model.dart';

class UserprofileWidget extends StatefulWidget {
  const UserprofileWidget({super.key});

  @override
  State<UserprofileWidget> createState() => _UserprofileWidgetState();
}

class _UserprofileWidgetState extends State<UserprofileWidget> {
  late UserprofileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserprofileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: MouseRegion(
          opaque: false,
          cursor: MouseCursor.defer ?? MouseCursor.defer,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 50.0,
                sigmaY: 50.0,
              ),
              child: Container(
                width: double.infinity,
                height: 220.0,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    _model.mouseRegionHovered == true
                        ? FlutterFlowTheme.of(context).secondaryBackground
                        : Color(0x19000000),
                    Color(0x19F5F5F5),
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                  border: Border.all(
                    color: _model.mouseRegionHovered == true
                        ? FlutterFlowTheme.of(context).secondaryBackground
                        : Color(0xE5F5F5F5),
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              FlutterFlowTheme.of(context).secondary,
                              FlutterFlowTheme.of(context).primary
                            ],
                            stops: [0.0, 1.0],
                            begin: AlignmentDirectional(0.0, -1.0),
                            end: AlignmentDirectional(0, 1.0),
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                        child: Container(
                          width: 200.0,
                          height: 200.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/n-c-d-dashboad-yr2b5b/assets/lcbz5asvnnc5/ChatGPT_Image_19_%E0%B8%9E.%E0%B8%84._2568_09_05_28.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        'นายทดลอง ทดสอบ',
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              font: GoogleFonts.ibmPlexSansThaiLooped(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 2.0, 12.0, 2.0),
                          child: Text(
                            'เจ้าหน้าที',
                            maxLines: 1,
                            style:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      font: GoogleFonts.ibmPlexSansThaiLooped(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontStyle,
                                    ),
                          ),
                        ),
                      ),
                      Text(
                        'โรงพยาบาลทดสอบ',
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              font: GoogleFonts.ibmPlexSansThaiLooped(
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: _model.mouseRegionHovered == true
                              ? FlutterFlowTheme.of(context).secondary
                              : FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'ออกจากระบบ',
                                  maxLines: 1,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        font: GoogleFonts.ibmPlexSansThaiLooped(
                                          fontWeight: FontWeight.normal,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                        color: _model.mouseRegionHovered == true
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryBackground
                                            : FlutterFlowTheme.of(context)
                                                .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_circle_right,
                                color: _model.mouseRegionHovered == true
                                    ? FlutterFlowTheme.of(context)
                                        .secondaryBackground
                                    : FlutterFlowTheme.of(context).primaryText,
                                size: 20.0,
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
          ),
          onEnter: ((event) async {
            safeSetState(() => _model.mouseRegionHovered = true);
          }),
          onExit: ((event) async {
            safeSetState(() => _model.mouseRegionHovered = false);
          }),
        ),
      ),
    );
  }
}
