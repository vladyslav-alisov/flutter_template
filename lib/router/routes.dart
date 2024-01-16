enum Routes {
  /// Outer routes
  /// MAIN Route AUTH
  auth("/auth", "/auth"),

  onBoardingLanguageScreen("on_boarding_language_screen", "/auth/on_boarding_language_screen"),
  onBoardingScreen("on_boarding_screen", "/auth/on_boarding_screen"),
  signInScreen("sign_in_screen", "/auth/sign_in_screen"),
  userInvite("user-invite", "/auth/user-invite"),
  resetSuccessScreen("reset_success_screen", "/auth/reset_success_screen"),
  otpVerificationScreen("otp_password_verification_screen", "/auth/otp_password_verification_screen"),
  newPasswordScreen("new_password_screen", "/auth/new_password_screen"),
  forgotPasswordScreen("forgot_password_screen", "/auth/forgot_password_screen"),

  /// Inner routes
  /// MAIN Route HOME
  navigation("home", "/home"),
  // Other screens
  signUpSuccessScreen("sign_up_success_screen", "/home/sign_up_success_screen"),
  updateProfileScreen("update_profile_screen", "/home/update_profile_screen"),
  dataScreen("data_screen", "/home/data_screen"),
  myGoalsScreen("my_goals_screen", "/home/my_goals_screen"),
  privacyPolicyScreen("/privacy_policy_screen", "/privacy_policy_screen"),
  aboutScreen("about_screen", "/home/about_screen"),
  connectHealthAppsScreen("connect_health_apps_screen", "/home/connect_health_apps_screen"),

  // Notifications
  notificationsScreen("notifications_screen", "/home/notifications_screen"),
  activityReminderScreen("activity_reminder_screen", "/home/notifications_screen/activity_reminder_screen"),
  sleepReminderScreen("sleep_reminder_screen", "/home/notifications_screen/sleep_reminder_screen"),
  hydrationReminderScreen("hydration_reminder_screen", "/home/notifications_screen/hydration_reminder_screen"),

  // Mindfulness
  mindfulnessSettingsScreen("mindfulness_settings_screen", "/home/mindfulness_settings_screen"),
  breathingPatternsScreen("breathing_patterns_screen", "/home/mindfulness_settings_screen/breathing_patterns_screen"),
  guidedBreathingScreen("guided_breathing_screen", "/home/mindfulness_settings_screen/guided_breathing_screen"),

  securitySettingsScreen("security_settings_screen", "/home/security_settings_screen"),
  unitSettingScreen("unit_setting_screen", "/home/unit_setting_screen"),
  selectLanguageScreen("select_language_screen", "/home/select_language_screen"),

  changePasswordScreen("change_password_settings_screen", "/home/change_password_settings_screen"),
  ringLeaderboardScreen("ring_leaderboard_screen", "/home/ring_leaderboard_screen"),

  contentDetailsScreen("content_details_screen", "/home/content_details_screen"),
  contentListScreen("content_list_screen", "/home/content_list_screen"),

  moodScreen("mood", "/home/mood"),
  changeMoodScreen("change_mood_screen", "/home/change_mood_screen"),

  stepGoalScreen("step_goal_screen", "/home/step_goal_screen"),
  sleepGoalScreen("sleep_goal_screen", "/home/sleep_goal_screen"),
  weightGoalScreen("weight_goal_screen", "/home/weight_goal_screen"),

  updateHeightAndWeightScreen("update_height_and_weight_screen", "/home/update_height_and_weight_screen"),
  weightDataScreen("weight_data_screen", "/home/weight_data_screen"),
  editWeightScreen("edit_weight_screen", "/home/edit_weight_screen"),
  barChartDataScreen("bar_chart_data_screen", "/home/bar_chart_data_screen"),
  emailVerificationScreen("email_verification_screen", "/home/email_verification_screen"),

  settingsScreen("settings_screen", "/home/settings_screen");

  const Routes(this.name, this.path);

  final String name;
  final String path;
}
