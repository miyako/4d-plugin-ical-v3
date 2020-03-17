# 4d-plugin-ical-v3
Updated version of iCal API

### Remarks

You must first call ``iCal_Request_permisson`` to ask permission from the user to access their calendar. It is an asynchronous call, which means that in the first instance, it will always return ``{"success":false}``. Later, after the user has granted permission, you might get ``{"success":true}``.

* If the main app (4D) does not have the required ``Info.plist`` property, the following error might be returned.

```json
{
  "success":false,
  "errorMessage":"NScalendarUsageDescription is missing in app info.plist"
}
```

* If the main app (4D) does not have the required codesigning entitlements, the following error might be returned.

```json
{
  "success":false,
  "errorMessage":"com.apple.security.personal-information.calendars is missing in app entitlement"
}
```

or 

```json
{
  "success":false,
  "errorMessage":"com.apple.security.personal-information.calendars is set to false in app entitlement"
}
```

If the main app (4D) has the required ``Info.plist`` property as well as codesigning entitlement, 2 dialogs might be presented, one after the other.

<img width="532" alt="スクリーンショット 2020-03-17 9 51 06" src="https://user-images.githubusercontent.com/1725068/76811694-d8518d00-6835-11ea-85a3-5556bc3522f6.png">

<img width="532" alt="スクリーンショット 2020-03-17 9 51 10" src="https://user-images.githubusercontent.com/1725068/76811698-dc7daa80-6835-11ea-9e40-d8352d98c0b9.png">

