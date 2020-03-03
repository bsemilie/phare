import 'package:flutter/material.dart';

class ShowUp extends StatefulWidget {
  final Widget child;
  final AnimationController animController;

  ShowUp({@required this.child, @required this.animController});

  @override
  _ShowUpState createState() => _ShowUpState();
}

class _ShowUpState extends State<ShowUp> {
  Animation<Offset> _animOffset;

  @override
  void initState() {
    super.initState();

    final curve = CurvedAnimation(
        curve: Curves.decelerate, parent: widget.animController);
    _animOffset =
        Tween<Offset>(begin: const Offset(0.0, 0.35), end: Offset.zero)
            .animate(curve);
    widget.animController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    widget.animController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
      opacity: widget.animController,
    );
  }
}
