import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:html';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'package:Swarnim_Jain/functions/notifySnackBar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

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

// Function to convert normal GitHub link to raw link
String convertToRawLink(String url) {
  // Check if the URL is a valid GitHub link
  if (url.contains('github.com') && url.contains('/blob/')) {
    // Replace 'github.com' with 'raw.githubusercontent.com'
    // and remove the 'blob' part from the link
    String rawLink = url
        .replaceFirst('github.com', 'raw.githubusercontent.com')
        .replaceFirst('/blob/', '/');
    // print(rawLink);
    return rawLink;
  } else {
    // Return the original URL if it's not in the expected format
    return 'Invalid GitHub file link';
  }
}

String dateCalculateExpe(String date) {
  DateTime currentDate = DateTime.now();

  // Parse the given string into a DateTime object
  DateTime sDate = DateFormat('MMM yyyy').parse(date);

  // Calculate the difference in years and months
  int yearDiff = currentDate.year - sDate.year;
  int monthDiff = currentDate.month - sDate.month;

  // Adjust if the month difference is negative
  if (monthDiff < 0) {
    yearDiff -= 1;
    monthDiff += 12;
  }

  if (monthDiff == 0) {
    return '$yearDiff Year';
  }

  String year = 'Year';
  String month = 'Month';

  if (yearDiff > 1) year = 'Years';
  if (monthDiff > 1) month = 'Months';

  if (yearDiff == 0) return '$monthDiff $month';

  return '$yearDiff $year $monthDiff $month';
}

// Function to download a file from a URL
Future<void> downloadResume(String url) async {
  // Convert the URL to raw format if it's a GitHub link
  String downloadUrl = convertToRawLink(url);

  // Check if the URL is valid for download
  if (downloadUrl == 'Invalid GitHub file link') {
    const AnimatedSnackBar(message: 'Invalid URL format');
    return;
  }

  // Fetch the PDF file as bytes
  final response = await http.get(Uri.parse(downloadUrl));

  if (response.statusCode == 200) {
    // Convert the response body to Uint8List
    final bytes = Uint8List.fromList(response.bodyBytes);

    // Create a blob from the bytes
    final blob = Blob([bytes]);

    // Create an object URL for the blob
    final url = Url.createObjectUrlFromBlob(blob);

    // Create an anchor element to trigger the download
    final anchorElement =
        AnchorElement(href: url)
          ..download =
              "Swarnim_Jain.pdf" // File name for download
          ..click();

    // Clean up the object URL after download
    Url.revokeObjectUrl(url);
  } else {
    AnimatedSnackBar(
      message: 'Failed to download file: ${response.statusCode}',
    );
  }
}
