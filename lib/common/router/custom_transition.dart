import 'package:desing_system/utils/context_dislay_target_extension.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

// abstract class CustomTransition {
//   static CustomTransitionPage animation(Widget child, GoRouterState state) {
//     return CustomTransitionPage(
//       key: state.pageKey,
//       child: child,
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         return SlideTransition(
//           position: Tween<Offset>(
//             begin: const Offset(1, 0),
//             end: Offset.zero,
//           ).animate(animation),
//           child: child,
//         );
//       },
//     );
//   }

//   static Page<dynamic> fadeTransition(
//     BuildContext context,
//     GoRouterState state,
//     Widget child,
//   ) {
//     return CustomTransitionPage(
//       key: state.pageKey,
//       child: child,
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         return FadeTransition(opacity: animation, child: child);
//       },
//     );
//   }
// }

abstract class CustomTransition {
  static CustomTransitionPage animation(Widget child, GoRouterState state) {
    return CustomTransitionPage(
      key: state.pageKey,
      name: state.name,
      child: child,
      transitionDuration: Duration(milliseconds: 200),
      transitionsBuilder: (context, animation, __, child) {
        if (context.displayTarget.isDesktop) {
          return child;
        }
        return SlideTransition(
          position: animation.drive(_getAppTransitionTween()),
          child: child,
        );
      },
    );
  }

  static Animatable<Offset> _getAppTransitionTween() {
    const begin = Offset(1.0, 0.0);
    const end = Offset.zero;
    const curve = Curves.ease;
    return Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
  }
}
