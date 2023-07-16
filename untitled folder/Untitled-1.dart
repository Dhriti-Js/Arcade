import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.bounceOut,
          delay: 0.ms,
          duration: 1870.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(35, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/Download_premium_vector_of_Neon_abstract_border_on_a_dark_purple_social_story_template_vector_by_wifiseeker_about_instagram_story_background_navy_blue,_mobile_wallpaper,_iphone_wallpaper_dark,_neon,_and_wallpaper_2408438.jpeg',
                    width: 452,
                    height: 879,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.02, -0.06),
                child: Text(
                  'RETROMANIA',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'neon',
                        color: Color(0xFFB8FFF5),
                        fontSize: 90,
                        useGoogleFonts: false,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
              ),
              Align(
                alignment: AlignmentDirectional(-0.02, 0.21),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed(
                      'Game',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.topToBottom,
                        ),
                      },
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(34),
                    child: Image.asset(
                      'assets/images/Premium_Vector___Lets_play_neon_signs_style_text.jpeg',
                      width: 229,
                      height: 97,
                      fit: BoxFit.cover,
                    ),
                  ),
                ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
