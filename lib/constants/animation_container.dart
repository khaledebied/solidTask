import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:testtask/constants/app_constants.dart';

/// AnimationContainer used to create simple animation
/// by using flutter_staggered_animations
class AnimationContainer extends StatelessWidget {
  /// child variable help to store any widget as child
  final Widget child;

  /// position of animation
  final int index;

  /// boolean help to show axis animation direction
  final bool vertical;

  /// boolean used to show scale animation
  final bool scale;

  /// boolean used to show horizontalOffset & verticalOffset
  final double distance;

  /// used to show the animation duration
  final Duration duration;

  /// AnimationContainer constructor
  const AnimationContainer({
    required this.child,
    required this.index,
    this.vertical = true,
    this.distance = AppConstants.defaultAnimationDistance,
    this.scale = false,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredList(
      position: index,
      duration: duration,
      child: Visibility(
        visible: scale,
        replacement: Visibility(
          visible: vertical,
          replacement: SlideAnimation(
            horizontalOffset: distance,
            child: FadeInAnimation(child: child),
          ),
          child: SlideAnimation(
            verticalOffset: distance,
            child: FadeInAnimation(child: child),
          ),
        ),
        child: ScaleAnimation(child: FadeInAnimation(child: child)),
      ),
    );
  }
}
