import 'package:flutter/material.dart';

class registeration extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return registerationState();
  }
}

class registerationState extends State<registeration> {

  String _uname = 'TestUser';
  String _firstname = '';
  String _lastname = '';
  String _gender = '';
  String _email = '';
  String _phone = '';
  String _address1 = '';
  String _locality = '';
  String _state = '';
  String _postalcode = '';
  String _nok = '';
  String _nok_phone = '';
  String _Password = '';
  String _rePassword = '';

  final GlobalKey<registerationState> _formKey = GlobalKey<registerationState>();

  Widget _buildUNameField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'UserName'),
      enableSuggestions: false,
      autocorrect: false,
      validator: (value){
        // if(value.isEmpty){
        //   return 'UserName is required';
        // }
      },
      // onSaved: (value){
      //     _uname = value;
      // },
    );
  }

  Widget _buildPasswordField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false,
      validator: (value){
        // if(value.isEmpty){
        //   return 'UserName is required';
        // }
      },
      // onSaved: (value){
      //     _password = value;
      // },
    );
  }

  Widget _buildRePasswordField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Re-enter Password'),
      obscureText: true,
      enableSuggestions: false,
      autocorrect: false,
      validator: (value){
        // if(value.isEmpty){
        //   return 'Re-enter Password';
        // }
      },
      // onSaved: (value){
      //     _rePassword = value;
      // },
    );
  }

  Widget _buildFirstNameField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'First Name'),
      validator: (value){
        // if(value.isEmpty){
        //   return 'First Name is required';
        // }
      },
      // onSaved: (value){
      //     _firstname = value;
      // },
    );
  }

  Widget _buildLastNameField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Last Name'),
      validator: (value){
        // if(value.isEmpty){
        //   return 'Last Name is required';
        // }
      },
      // onSaved: (value){
      //     _lastname = value;
      // },
    );
  }

  Widget _buildGenderField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Gender'),
      validator: (value){
        // if(value.isEmpty){
        //   return 'Gender is required';
        // }
      },
      // onSaved: (value){
      //     _gender = value;
      // },
    );
  }

  Widget _buildEmailField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      validator: (value){
        // if(value.isEmpty){
        //   return 'Email is required';
        // }
      },
      // onSaved: (value){
      //     _email = value;
      // },
    );
  }

  Widget _buildPhoneField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone'),
      validator: (value){
        // if(value.isEmpty){
        //   return 'Phone is required';
        // }
      },
      // onSaved: (value){
      //     _phone = value;
      // },
    );
  }

  Widget _buildAddress1Field(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Address'),
      validator: (value){
        // if(value.isEmpty){
        //   return 'Address is required';
        // }
      },
      // onSaved: (value){
      //     _address1 = value;
      // },
    );
  }

  Widget _buildLocalityField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Locality'),
      validator: (value){
        // if(value.isEmpty){
        //   return 'Locality is required';
        // }
      },
      // onSaved: (value){
      //     _locality = value;
      // },
    );
  }

  Widget _buildStateField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'State'),
      validator: (value){
        // if(value.isEmpty){
        //   return 'State is required';
        // }
      },
      // onSaved: (value){
      //     _state = value;
      // },
    );
  }

  Widget _buildPostalCodeField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'PostalCode'),
      validator: (value){
        // if(value.isEmpty){
        //   return 'PostalCode is required';
        // }
      },
      // onSaved: (value){
      //     _postalcode = value;
      // },
    );
  }

  Widget _buildNOKField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Next of kin\'s Name'),
      validator: (value){
        // if(value.isEmpty){
        //   return 'Next of kin\'s Name is required';
        // }
      },
      // onSaved: (value){
      //     _nok = value;
      // },
    );
  }

  Widget _buildNOKPhoneField(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Next of kin\'s Phone'),
      validator: (value){
        // if(value.isEmpty){
        //   return 'Next of kin\'s Phone is required';
        // }
      },
      // onSaved: (value){
      //     _nok_phone = value;
      // },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TeleMedicine | Gp 2')),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form( child: new SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildUNameField(),
              _buildPasswordField(),
              _buildRePasswordField(),
              _buildFirstNameField(),
              _buildLastNameField(),
              _buildGenderField(),
              _buildEmailField(),
              _buildPhoneField(),
              _buildAddress1Field(),
              _buildLocalityField(),
              _buildStateField(),
              _buildPostalCodeField(),
              _buildNOKField(),
              _buildNOKPhoneField(),
              //SizedBox(height: 100),
              RaisedButton(
                  child: Text('Register', style: TextStyle(color: Colors.blue, fontSize: 16 ) ),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/',
                  );
                },
              )
            ],
          ),
        ),

        ),
      )
    );
  }
}
