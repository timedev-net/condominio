import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                // onChanged: (v) {
                //   title = v;
                // },
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Título',
                  labelStyle: TextStyle(
                      // color: Colors.purple,
                      ),
                ),
              ),
              TextField(
                // onChanged: (v) => value = v,
                controller: _valueController,
                decoration: InputDecoration(
                  labelText: 'Valor (R\$)',
                  labelStyle: TextStyle(
                      // color: Colors.purple,
                      ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButton(
                    textColor: Colors.purple,
                    child: Text('Nova Transação'),
                    onPressed: () {
                      // print(_titleController.text);
                      // print(_valueController.text);
                      final title = _titleController.text;
                      final value =
                          double.tryParse(_valueController.text) ?? 0.0;
                      onSubmit(title, value);
                    },
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
