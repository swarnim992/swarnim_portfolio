import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/functions/notifySnackBar.dart';
import 'package:url_launcher/url_launcher.dart';

void openEmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'swarnimjain992@gmail.com', // replace with your email
    // query: 'subject=Hello&body=How are you?', // Optional: Pre-fill subject and body
  );
  launchUrl(params);
}

void copyTextToClipboard(BuildContext context, String text) {
  Clipboard.setData(ClipboardData(text: text));
  notifySnackBar(context, "Text copied to clipboard");
}
