import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _name, _location, _price, _imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Agregar Propiedad')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nombre'),
                validator: (value) =>
                    value!.isEmpty ? 'Ingrese un nombre' : null,
                onSaved: (value) => _name = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Ubicación'),
                validator: (value) =>
                    value!.isEmpty ? 'Ingrese una ubicación' : null,
                onSaved: (value) => _location = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Precio'),
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value!.isEmpty ? 'Ingrese un precio válido' : null,
                onSaved: (value) => _price = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'URL de la Imagen'),
                validator: (value) =>
                    value!.isEmpty ? 'Ingrese la URL de la imagen' : null,
                onSaved: (value) => _imageUrl = value,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.pop(context, {
                      'name': _name,
                      'location': _location,
                      'price': _price,
                      'imageUrl': _imageUrl,
                    });
                  }
                },
                child: Text('Guardar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
