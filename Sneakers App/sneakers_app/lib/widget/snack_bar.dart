import 'package:flutter/material.dart';

SnackBar successSnackBar() => SnackBar(
      backgroundColor: Colors.green[400],
      content: const Text('Successfully Added to your bag!'),
      action: SnackBarAction(
        textColor: Colors.white,
        label: 'Got it',
        onPressed: () {},
      ),
    );

SnackBar failedSnackBar() => SnackBar(
      backgroundColor: Colors.red[400],
      content: const Text('You have added this item before!'),
      action: SnackBarAction(
        textColor: Colors.white,
        label: 'Got it',
        onPressed: () {},
      ),
    );
