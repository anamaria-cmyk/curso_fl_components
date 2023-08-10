import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';


class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

   final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'firts_name' : 'Ana Maria',
      'last_name'  : 'solorzano',
      'email'      : 'anamariasolorzano013@gmail.com',
      'password'   : '123456',
      'role'       : 'Admin',
    };

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
          child: Form(
             key: myFormKey,
            child: Column(
              children: [
          
                 CustomInputField(labelText: 'Nombre', hintText: 'Nombre del Usuario', formProperty: ' firts_name', formValues: formValues),
                 const SizedBox( height: 30),
          
                 CustomInputField(labelText: 'Apellido', hintText: 'Apellido del Usuario', formProperty: 'last_name', formValues:formValues ),
                 const SizedBox( height: 30),
          
                 CustomInputField(labelText: 'Correo', hintText: 'Correo del Usuario', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues:formValues ),
                 const SizedBox( height: 30),
          
                 CustomInputField(labelText: 'Contraseña', hintText: 'Contraseña del Usuario', obscureText: true, formProperty: 'role', formValues: formValues),
                 const SizedBox( height: 30),

                 DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'SuperUser', child: Text('SuperUser')),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(value: 'Jr. Developer', child: Text('Jr. Developer')),
                  ],

                   onChanged: (value) {  
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                   }
                 ),


                 ElevatedButton(
                  child: const  SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))
                    ),

                  onPressed: () {
                    FocusScope.of(context).requestFocus( FocusNode());
                  if ( !myFormKey.currentState!.validate() ) {
                     print('Formulario No Valido ');
                     return;
                    }
                    //* imprimir valores del formulario 
                    print(formValues);
                  },
                )
              ],
            ),
          )
        ), 
      ) 
    );
  }
}

