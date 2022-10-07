import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UITest extends StatelessWidget {
  const UITest({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(''),
            ),
            body: OrientationBuilder(builder: (context, orientation) {
              debugPrint('Orientation Changed');
              return orientation == Orientation.portrait
                  ? _buildVerticalLayout() //la
                  : _buildHorizontalLayout();
            })));
  }
}

class _buildVerticalLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Ankit'),
    );
  }
}

class _buildHorizontalLayout extends StatelessWidget {
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Container(
      color: Colors.amber,
      child: Text('$orientation'),
    );
  }
}

class ListWidget extends StatelessWidget {
  const ListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}