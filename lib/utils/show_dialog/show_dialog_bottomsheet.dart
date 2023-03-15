import 'package:adaptive_action_sheet/adaptive_action_sheet.dart';

// showDialogBottom({context, List<Widget>? children}) {
//   return showModalBottomSheet(
//     backgroundColor: AppColor.whiteColor.withOpacity(0.7),
//     shape: const RoundedRectangleBorder(
//       borderRadius: BorderRadius.only(
//         topLeft: Radius.circular(10.0),
//         topRight: Radius.circular(10.0),
//       ),
//     ),
//     context: context,
//     builder: (context) {
//       return Column(mainAxisSize: MainAxisSize.min, children: children!);
//     },
//   );
// }
showDialogBottom(
    {context,
    String? title,
    String? cancel,
    BottomSheetAction? bottomSheetAction}) {
  return showDialogBottom();
}
