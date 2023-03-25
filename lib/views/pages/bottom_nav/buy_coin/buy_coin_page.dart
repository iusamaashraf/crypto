// ignore_for_file: library_private_types_in_public_api

import 'package:crypto/constants/colors.dart';
import 'package:flutter/material.dart';

class BuyCoinPage extends StatefulWidget {
  final ValueSetter<String> onPressed;

  const BuyCoinPage({super.key, required this.onPressed});

  @override
  _BuyCoinPageState createState() => _BuyCoinPageState();
}

class _BuyCoinPageState extends State<BuyCoinPage> {
  String _input = '';

  final List<String> _keyValues = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '.',
    '0'
  ];

  Widget _buildKey(String value) {
    return Expanded(
      child: MaterialButton(
        child: Text(value,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                )),
        onPressed: () {
          setState(() {
            if (value == '.') {
              if (_input.isEmpty || _input.contains('.')) {
                return;
              } else {
                _input += value;
              }
            } else {
              _input += value;
            }
            widget.onPressed(_input);
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorClass.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorClass.primaryColor,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Buy Coins',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: Colors.white),
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          Container(
            alignment: Alignment.center,
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(_input.isEmpty ? '0.0' : _input,
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )),
          ),
          const Spacer(),
          Row(
            children:
                _keyValues.sublist(0, 3).map((e) => _buildKey(e)).toList(),
          ),
          Row(
            children:
                _keyValues.sublist(3, 6).map((e) => _buildKey(e)).toList(),
          ),
          Row(
            children:
                _keyValues.sublist(6, 9).map((e) => _buildKey(e)).toList(),
          ),
          Row(
            children: [
              _buildKey('.'),
              _buildKey('0'),
              _input == ''
                  ? const Spacer()
                  : Expanded(
                      child: MaterialButton(
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.close,
                              color: ColorClass.primaryColor,
                              size: 17,
                            ),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _input = _input.substring(0, _input.length - 1);
                            widget.onPressed(_input);
                          });
                        },
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
