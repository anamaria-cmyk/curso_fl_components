import 'package:flutter/material.dart';
import 'package:fl_components/themes/app_theme.dart';


class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _slidervalue = 100;
  bool _sliderEnabled = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
      
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value:_slidervalue, 
            onChanged: _sliderEnabled
            ? (value) {
              _slidervalue = value; 
              setState(() {});
            }
            :null
          ),
          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled, 
            onChanged: ( value ) => setState(() {_sliderEnabled = value ?? true;})
          ),

            SwitchListTile.adaptive(
               activeColor: AppTheme.primary,
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled, 
            onChanged: ( value ) => setState(() {_sliderEnabled = value;})
          ),
            const AboutListTile(),
                         
          Expanded(
            child: SingleChildScrollView(
              child: Image (
                image: const NetworkImage('https://images.justwatch.com/poster/238911594/s592/winx-club'),
                fit: BoxFit.contain,
                width: _slidervalue,
              ),
            ),
          ),
        ],
      )
    );
  }
}