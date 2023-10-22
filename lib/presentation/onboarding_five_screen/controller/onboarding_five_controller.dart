import 'package:photo_edit/core/app_export.dart';
import 'package:photo_edit/presentation/onboarding_five_screen/models/onboarding_five_model.dart';

/// A controller class for the OnboardingFiveScreen.
///
/// This class manages the state of the OnboardingFiveScreen, including the
/// current onboardingFiveModelObj
class OnboardingFiveController extends GetxController {
  Rx<OnboardingFiveModel> onboardingFiveModelObj = OnboardingFiveModel().obs;
}
