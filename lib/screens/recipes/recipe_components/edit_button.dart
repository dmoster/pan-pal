import 'package:flutter/material.dart';

import 'package:pan_pal/widgets/palette.dart';

class EditButton extends StatefulWidget {
  const EditButton({
    Key key,
    @required this.userId,
    @required this.recipeUserId,
    @required this.onPressed,
  }) : super(key: key);

  final String userId;
  final String recipeUserId;
  final VoidCallback onPressed;

  @override
  _EditButtonState createState() => _EditButtonState();
}

class _EditButtonState extends State<EditButton> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: canEdit(),
      child: IconButton(
        icon: Icon(Icons.edit_outlined),
        color: Palette().darkIcon,
        tooltip: 'Edit',
        onPressed: widget.onPressed,
      ),
    );
  }

  bool canEdit() {
    return widget.userId == widget.recipeUserId;
  }
}
