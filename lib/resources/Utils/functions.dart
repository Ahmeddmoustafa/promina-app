// import 'package:intl/intl.dart';
// import 'package:url_launcher/url_launcher.dart';

// String formatPrice(double price) {
//   NumberFormat formatter = NumberFormat("#,###");
//   return formatter.format(price);
// }

// String formatDate(DateTime date) {
//   return "${date.day}-${date.month}-${date.year}";
// }

// Future<bool> openUrl(String url) async {
//   if (await canLaunchUrl(Uri.parse(url))) {
//     await launchUrl(Uri.parse(url));
//     return true;
//   }
//   return false;
// }

// Future<bool> openWhatsApp(String number) async {
//   return await openUrl("https://wa.me/201100888552");
// }

// String chartFormatPrice(double price) {
//   double numericPrice = price;

//   if (numericPrice >= 1000000) {
//     // Convert to millions and format as specified
//     String formattedValue = (numericPrice / 1000000)
//         .toStringAsFixed(numericPrice % 1000000 == 0 ? 0 : 2);
//     return removeTrailingZeros(formattedValue) + 'M';
//   } else if (numericPrice >= 100000) {
//     // Convert to hundreds of thousands and format as specified
//     String formattedValue = (numericPrice / 1000000).toStringAsFixed(3);
//     return removeTrailingZeros(formattedValue) + 'M';
//   } else if (numericPrice >= 1000) {
//     // Convert to thousands and format as specified
//     String formattedValue =
//         (numericPrice / 1000).toStringAsFixed(numericPrice % 1000 == 0 ? 0 : 2);
//     return removeTrailingZeros(formattedValue) + 'K';
//   } else if (numericPrice == 0) {
//     return "0";
//   } else {
//     // Format the number with two decimal places and 'K' suffix for values less than 1000
//     // String formattedValue = (numericPrice / 1000).toStringAsFixed(2);
//     return "$numericPrice";
//   }
// }

// String removeTrailingZeros(String value) {
//   // Remove trailing zeros and decimal point if necessary
//   value = value.replaceAll(RegExp(r'0*$'), '');
//   value = value.replaceAll(RegExp(r'\.$'), '');
//   return value;
// }

// // String chartFormatPrice(String price) {
// //   double numericPrice = double.parse(price);

// //   if (numericPrice >= 1000000) {
// //     // Convert to millions and format as specified
// //     return (numericPrice / 1000000)
// //             .toStringAsFixed(numericPrice % 1000000 == 0 ? 0 : 3) +
// //         'M';
// //   } else if (numericPrice >= 1000) {
// //     // Convert to thousands and format as specified
// //     return (numericPrice / 1000)
// //             .toStringAsFixed(numericPrice % 1000 == 0 ? 0 : 2) +
// //         'K';
// //   } else {
// //     // Format the number with two decimal places and 'K' suffix for values less than 1000
// //     return (numericPrice / 1000).toStringAsFixed(2) + 'K';
// //   }
// // }
