import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:text_note_app/style/style.dart';

// ignore: must_be_immutable
class NoteAdd extends StatefulWidget {
  NoteAdd(this.doc, {super.key});
  QueryDocumentSnapshot doc;

  @override
  State<NoteAdd> createState() => _NoteAddState();
}

class _NoteAddState extends State<NoteAdd> {
  @override
  Widget build(BuildContext context) {
    int color_id = widget.doc['color_id'];
    return Scaffold(
      backgroundColor: AppStyle.cardsColor[color_id],
      appBar: AppBar(
        backgroundColor: AppStyle.cardsColor[color_id],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.doc['title'],
              style: AppStyle.mainText,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              widget.doc['date'],
              style: AppStyle.mainText,
            ),
            const SizedBox(
              height: 30.0,
            ),
            Text(
              widget.doc['content'],
              style: AppStyle.mainContent,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
