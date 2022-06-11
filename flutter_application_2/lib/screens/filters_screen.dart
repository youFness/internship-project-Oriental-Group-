// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const screenRoute = '/filter';
  final Function saveFilters;
  final Map<String, bool> currentFilters;

  FiltersScreen(this.currentFilters, this.saveFilters);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _cosmetible = false;
  var _cosmetique = false;
  // var _family = false;
  @override
  void initState() {
    _cosmetible = widget.currentFilters['cosmetible'] as bool;
    _cosmetique = widget.currentFilters['cosmetique'] as bool;
    // _family = widget.currentFilters['family'] as bool;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Les filtres:',
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'cosmetible': _cosmetible,
                'cosmetique': _cosmetique,
                // 'family': _family,
              };
              widget.saveFilters(selectedFilters);
            },
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          SizedBox(height: 50),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                  'Produit Comestible',
                  'Produits alimentaire valable (Pour cuisinier)',
                  _cosmetible,
                  (newValue) {
                    setState(
                      () {
                        _cosmetible = newValue;
                      },
                    );
                  },
                ),
                buildSwitchListTile(
                  'Produit Cosmetique',
                  'Produits pour les soins valable ',
                  _cosmetique,
                  (newValue) {
                    setState(
                      () {
                        _cosmetique = newValue;
                      },
                    );
                  },
                ),
                // buildSwitchListTile(
                //   '_isInSummer',
                //   '_isInSummer',
                //   _summer,
                //   (newValue) {
                //     setState(
                //       () {
                //         _summer = newValue;
                //       },
                //     );
                //   },
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }

  SwitchListTile buildSwitchListTile(String title, String subtitle,
      var currentValue, Function(bool) updateValue) {
    return SwitchListTile(
      title: Text(title), subtitle: Text(subtitle),
      value: currentValue,
      // newValue to get the new value
      onChanged: updateValue,
    );
  }
}
