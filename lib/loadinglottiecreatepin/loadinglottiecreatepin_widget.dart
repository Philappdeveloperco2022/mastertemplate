import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'loadinglottiecreatepin_model.dart';
export 'loadinglottiecreatepin_model.dart';

class LoadinglottiecreatepinWidget extends StatefulWidget {
  const LoadinglottiecreatepinWidget({Key? key}) : super(key: key);

  @override
  _LoadinglottiecreatepinWidgetState createState() =>
      _LoadinglottiecreatepinWidgetState();
}

class _LoadinglottiecreatepinWidgetState
    extends State<LoadinglottiecreatepinWidget> with TickerProviderStateMixin {
  late LoadinglottiecreatepinModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadinglottiecreatepinModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('CreatedbySystem');
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
              'https://assets1.lottiefiles.com/packages/lf20_6n5qhd25.json',
              width: 250,
              height: 250,
              fit: BoxFit.contain,
              animate: true,
            ),
          ],
        ),
      ),
    );
  }
}
