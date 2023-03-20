import 'package:cic_mobile/modules/profile/models/personal_profile_model/data/data_model.dart';

abstract class ProfileRepo {
  DataProfileDetail? profileModel;
  void initailEditProfile();
  void updateProfile();
}
