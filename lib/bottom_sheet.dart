import 'package:flutter/material.dart';

class BottomSheetView extends StatefulWidget {
  const BottomSheetView({Key? key}) : super(key: key);

  @override
  State<BottomSheetView> createState() => _BottomSheetViewState();
}

class _BottomSheetViewState extends State<BottomSheetView> {
  @override
  Widget build(BuildContext context) {
    final paddingBottom = MediaQuery.of(context).viewInsets.bottom;
    final _nameEditController = TextEditingController();
    final _cityNameEditController = TextEditingController();

    DateTime _selectedDate = DateTime.now();

    return SingleChildScrollView(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
            bottom: paddingBottom + 10,
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Input Nama'),
                controller: _nameEditController,
                onSubmitted: (_) => {},
              ),
              //TextField
              TextField(
                decoration: const InputDecoration(labelText: 'Input Kota'),
                controller: _cityNameEditController,
                keyboardType: TextInputType.number,
                onSubmitted: (_) => {},
              ),
              SizedBox(
                height: 70,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        _selectedDate == null
                            ? 'No Date Chosen!'
                            : 'Picked Date: $_selectedDate',
                      ), //Text
                    ), //Expand
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      child: const Text(
                        'Choose Date',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ), //TextStyle
                      ), //Text
                      onPressed: () {
                        _presentDatePicker(context);
                      },
                    ), //FlatButton
                  ], //<Widget>[]
                ), //Row
              ), //Container
              ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {},
              ), //RaisedButton
            ], //<Widget>[]
          ),
        ), //Column
      ),
    ); //Card
  }

  void _presentDatePicker(BuildContext context) {}
}
