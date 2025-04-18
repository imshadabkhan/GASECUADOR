class Endpoints {
  static const domain="https://indyguide.xcodie.com";
  static const baseURL = '$domain/api/';


  static const deleteAccount="delete-account";
  static const logoutAccount="logout";

  static const termsCondition ='https://www.theboyz.app/tc';
  static const fetchNotification="fetch-notifications";
  static const fetchNotificationCount="notifications/unseen-count";

  static const fetchRequests="friends/pending";
  static const fetchFriendsToAdd="get-friends-for-group";
  static const fetchFriendsToInvite="get-friends-for-event";

  static const login="login";
  static const signup="register";
  static const sendMailOtp="send-mail-otp";
  static const verifyOTP="verify-otp";
  static const requestForgotPassword="forgot-password";
  static const resendOTPForgot="forgot-password";
  static const verifyResetOTP="verify-reset-otp";
  static const resetPassword="reset-password";
  static const fetchProfile="profile";
  static const updateProfile="update-profile";
  static const updateProfileImage="update-profile-image";
  static const allGroups="all-groups";
  static const myGroups="groups";  static const createEvent="add-event";
  static const updatePassword="update-password";
  static const createGroup="create-group";
  static const nearbyGroup="nearby-groups";
  static const updateGroup="update-group";
  static const deleteGroup="delete-group";
  static const toggleFavGroup="toggle-favorite-group";
  static const joinGroup="join-group";
  static const leaveGroup="leave-group";
  static const deleteEvent="delete-event";
  static const joinedGroup="joined-groups";
  static const addGroupMember="add-group-member";
  static const sendInvitation="send-event-invitation";

  static const favGroup="favorite-groups";
  static const updateGroupImage="update-group-image";
  static const filterGroups="filter-groups";
  static const groupMembers="group-members";
  static const groupDetail="group-with-events-and-members";
  static const eventDetail="event-details";
  static const eventMembers="event-members";
  static const memberDetail="member-details";
  static const filterEvents="filter-events";

  static const eventDetailInfo="event-details-info";
  static const removeGroupMember="remove-group-member";
  static const removeEventMember="remove-event-member";

  static const nearbyEvents="nearby-events";
  static const joinEvent="join-event";
  static const categoryEvents="categorized-events";
  static const friends="friends";
  static const blockedUsers="blocked-users";
  static const popularEvents="popular-events";
  static const updateToken="update-fcm-token";
  static const googleKey="AIzaSyCd2N28IJZUmgoWKqJ9p1gfnleN0A8SwfM";

  static const fetchPlacesFromGoogle =
      'https://maps.googleapis.com/maps/api/place/autocomplete/json';
  static const fetchPlaceFromGoogle =
      'https://maps.googleapis.com/maps/api/place/details/json';
  static const leaveEvent="leave-event";
  static const deleteEventImage="delete-event-image";
  static const updateEventImage="add-event-images";
  static const handleFriendRequest="friends/handle-friend-request";
  static const removeFriend="friends/unfriend";
  static const sentFriendRequest="friends/send-friend-request";
  static const cancelFriendRequest="friends/cancel-friend-request";
  static const blockUser="user/block";
  static const unBlockUser="user/unblock";
  static const interests="update-interests";
  static const groupNotification="send-group-message-notification";
  static const joinEvents="joined-events";
  static const chatNotification="send-chat-message-notification";







}
