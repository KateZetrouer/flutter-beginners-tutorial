import 'package:flutter/material.dart';
import 'quote.dart';
import 'package:intl/intl.dart';

class QuoteCard extends StatefulWidget {

  final Quote quote;
  QuoteCard({ required this.quote });

  @override
  State<QuoteCard> createState() => _QuoteCardState();
}

class _QuoteCardState extends State<QuoteCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                widget.quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                widget.quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.thumb_up_sharp),
                    onPressed: () => setState(() => widget.quote.likes++),
                  ),
                Text('${widget.quote.likes}'),
                ],
              ),
              Wrap(
                spacing: 12,
                children: [
                  Chip(label: Text(widget.quote.category,
                  style: TextStyle(
                    fontSize: 14.0, 
                    color: Colors.grey[800],
                    ),
                  )
                  ),
                  Text(DateFormat('MMM d, yyyy').format(widget.quote.createdAt),
                  style: TextStyle(
                    fontSize: 14.0, 
                    color: Colors.red[800],
                    ),
                  ),
                ],
              ),
          ],
        ),
      )
    );
  }
}