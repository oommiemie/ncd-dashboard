import 'package:flutter/material.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/general/sidebar/sidebar_widget.dart';
import '/login/background/background_widget.dart';

class DashboardShellWidget extends StatelessWidget {
  const DashboardShellWidget({
    super.key,
    required this.child,
    required this.location,
  });

  final Widget child;
  final String location;

  int _seletForLocation(String location) {
    if (location.startsWith('/stroke')) return 4;
    if (location.startsWith('/ckd')) return 5;
    if (location.startsWith('/diabetes')) return 3;
    if (location.startsWith('/pressure')) return 2;
    return 1;
  }

  @override
  Widget build(BuildContext context) {
    final selet = _seletForLocation(location);

    return Scaffold(
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Stack(
        children: [
          const Opacity(
            opacity: 0.7,
            child: BackgroundWidget(),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              SidebarWidget(selet: selet),
              Expanded(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 350),
                  switchInCurve: Curves.easeOutCubic,
                  switchOutCurve: Curves.easeInCubic,
                  transitionBuilder: (child, animation) => FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0.02, 0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    ),
                  ),
                  child: KeyedSubtree(
                    key: ValueKey<String>(location),
                    child: child,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
