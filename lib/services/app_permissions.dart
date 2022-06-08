import 'package:peculiar_people_assembly/UI%20Components/copy.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';


String? encodeQueryParameters(Map<String, String> params){
  return params.entries.map((e) => '${Uri.encodeComponent(e.key)} = ${Uri.encodeComponent(e.value)}').join('&');
}

final Uri phoneNumberUri = Uri(
  scheme: 'tel',
  path: '+1-403-714-2283',
  // query: encodeQueryParameters(<String, String>{
  //   'subject':'tel'
  // })
);

final Uri emailUri = Uri(
  scheme: 'mailto',
  path: 'pastor@rccgstrathmore.com',
  // query: encodeQueryParameters(<String, String>{
  //   'subject':'tel'
  // })
);

final Uri smsUri = Uri(
  scheme: 'smsto',
  path: phone
);

void phoneCall() async{
  //  Request for app Permissions (Phone, SMS and Location Services)
  var statuses = await
    Permission.phone.request();

  // Check if call permission is Granted
  if (statuses.isGranted) {
    // Proceesd to dial phone Number
    await launchUrl(phoneNumberUri);
  }
  if (statuses.isPermanentlyDenied) {
    await openAppSettings();
  }
}

// Check if sms permission is Granted
void sms() async {
  Permission.sms.request();
  var status = await Permission.sms.status;

  
  if(status.isGranted){
    // Proceed to send sms
    await launchUrl(smsUri);
  }
  if (status.isPermanentlyDenied) {
    await openAppSettings();
  }
}

// Check if sms permission is Granted
Future sendEmail() async {
    await launchUrl(emailUri);
  }


// String? encodeQueryParameters(Map<String, String> params){
//   return params.entries.map((e) => '${Uri.encodeComponent(e.key)} = ${Uri.encodeComponent(e.value)}').join('');
// }