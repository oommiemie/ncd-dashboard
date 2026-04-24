import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IndicatorBreakdownWidget extends StatelessWidget {
  const IndicatorBreakdownWidget({
    super.key,
    required this.title,
    required this.charts,
    required this.gradientStart,
    required this.gradientEnd,
  });

  final String title;
  final List<Widget> charts;
  final Color gradientStart;
  final Color gradientEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [gradientStart, gradientEnd],
          stops: const [0.0, 1.0],
          begin: const AlignmentDirectional(0.0, -1.0),
          end: const AlignmentDirectional(0.0, 1.0),
        ),
        borderRadius: BorderRadius.circular(34.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    font: GoogleFonts.ibmPlexSansThaiLooped(
                      fontWeight:
                          FlutterFlowTheme.of(context).titleMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).titleMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleMedium.fontStyle,
                  ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(34.0),
            ),
            padding: const EdgeInsets.all(16.0),
            child: LayoutBuilder(
              builder: (context, constraints) {
                final isWide = constraints.maxWidth >= 900;
                if (!isWide) {
                  final items = <Widget>[];
                  for (var i = 0; i < charts.length; i++) {
                    items.add(charts[i]);
                    if (i < charts.length - 1) {
                      items.add(const SizedBox(height: 16));
                    }
                  }
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: items,
                  );
                }
                final rows = <Widget>[];
                for (var i = 0; i < charts.length; i += 2) {
                  final left = charts[i];
                  final right =
                      i + 1 < charts.length ? charts[i + 1] : const SizedBox();
                  rows.add(Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: left),
                      const SizedBox(width: 16),
                      Expanded(child: right),
                    ],
                  ));
                  if (i + 2 < charts.length) {
                    rows.add(const SizedBox(height: 16));
                  }
                }
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: rows,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
