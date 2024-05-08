import 'package:flutter/material.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';

class FormFieldWidget extends StatefulWidget {
  @override
  _FormFieldWidgetState createState() => _FormFieldWidgetState();
}

class _FormFieldWidgetState extends State<FormFieldWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _autocompleteController = TextEditingController();
  late AutoCompleteTextField<String> _autocompleteTextField;
  String? _selectedCity;
  bool _cityError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form with Autocomplete'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              _buildAutocompleteTextField(),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (_selectedCity == null) {
                      setState(() {
                        _cityError = true;
                      });
                    } else {
                      _cityError = false;
                      _submitForm();
                    }
                  }
                },
                child: Text('Submit'),
              ),
              SizedBox(height: 20.0),
              if (_cityError)
                Text(
                  'Please choose a valid city from the options',
                  style: TextStyle(color: Colors.red),
                ),
              if (_nameController.text.isNotEmpty)
                Text('Name: ${_nameController.text}'),
              if (_selectedCity != null) Text('Selected City: $_selectedCity'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAutocompleteTextField() {
    return _autocompleteTextField = AutoCompleteTextField<String>(
      key: GlobalKey(),
      controller: _autocompleteController,
      clearOnSubmit: false,
      suggestions: ['Surat', 'Bharuch', 'Bhavnagar', 'Vadodara'],
      decoration: InputDecoration(
        labelText: 'City',
        hintText: 'Type to search',
        errorText: _cityError ? 'Choose a city from the options' : null,
      ),
      itemFilter: (item, query) {
        return item.toLowerCase().startsWith(query.toLowerCase());
      },
      itemSorter: (a, b) {
        return a.compareTo(b);
      },
      itemSubmitted: (item) {
        setState(() {
          _autocompleteController.text = item;
          _selectedCity = item;
          _cityError = false;
        });
      },
      itemBuilder: (context, item) {
        return ListTile(
          title: Text(item),
        );
      },
    );
  }

  void _submitForm() {
    String name = _nameController.text;
    String city = _selectedCity ?? _autocompleteController.text;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Submitted: Name - $name, City - $city'),
        duration: Duration(seconds: 1),
        showCloseIcon: true,
        closeIconColor: Colors.black,
        backgroundColor: Color.fromARGB(255, 170, 175, 164),
        elevation: 5.5,
      ),
    );
  }
}
