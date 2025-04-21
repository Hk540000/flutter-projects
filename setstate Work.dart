import 'package:flutter/material.dart';

class SimpleTextBoxPage extends StatefulWidget {
  @override
  _SimpleTextBoxPageState createState() => _SimpleTextBoxPageState();
}

class _SimpleTextBoxPageState extends State<SimpleTextBoxPage> {
  final TextEditingController _controller = TextEditingController();
  List<String> _entries = [];

  void _handleSubmit() {
    if (_controller.text.trim().isEmpty) return;
    setState(() {
      _entries.add(_controller.text.trim());
      _controller.clear();
    });
  }

  void _handleClear() {
    setState(() {
      _controller.clear();
      _entries.clear();
    });
  }

  void _deleteEntry(int index) {
    setState(() {
      _entries.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple TextBox Example'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter something',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _handleSubmit,
                    child: Text('Submit'),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _handleClear,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                    ),
                    child: Text('Clear All'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: _entries.isEmpty
                  ? Center(
                child: Text(
                  'No entries yet.',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              )
                  : ListView.builder(
                itemCount: _entries.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.check_circle_outline),
                    title: Text(_entries[index]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () => _deleteEntry(index),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
