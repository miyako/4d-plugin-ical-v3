![version](https://img.shields.io/badge/version-17%2B-3E8B93)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm&color=blue)
[![license](https://img.shields.io/github/license/miyako/4d-plugin-ical-v3)](LICENSE)
![downloads](https://img.shields.io/github/downloads/miyako/4d-plugin-ical-v3/total)

See [4d-utility-sign-app](https://github.com/miyako/4d-utility-sign-app) on how to enable the plugin in 4D.

Alternatively use [4d-class-build-application](https://github.com/miyako/4d-class-build-application) to modify 4D entitlements.

# 4d-plugin-ical-v3
Updated version of iCal API

[miyako.github.io](https://miyako.github.io/2020/03/17/4d-plugin-ical-v3.html)

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

If the main app (4D) has the required ``Info.plist`` property as well as codesigning entitlement, and the user has not yet been asked for these permissions for the current application, up to 3 dialogs might be presented, one after the other.

<img width="532" alt="スクリーンショット 2020-03-17 9 51 06" src="https://user-images.githubusercontent.com/1725068/76811694-d8518d00-6835-11ea-85a3-5556bc3522f6.png">

<img width="532" alt="スクリーンショット 2020-03-17 9 51 10" src="https://user-images.githubusercontent.com/1725068/76811698-dc7daa80-6835-11ea-9e40-d8352d98c0b9.png">

<img width="532" alt="スクリーンショット 2020-03-17 11 15 52" src="https://user-images.githubusercontent.com/1725068/76815335-b7db0000-6840-11ea-81ff-b1501dbe786f.png">

**Note**: The plugin does not need access Reminder or Contacts. However the underlying API will prompt the requests.

The system will only display the dialogs once per application session, and never if the user has already denied the same request.

You can reset security settings from Terminal.

```sh
tccutil reset Reminders com.4d.4d
tccutil reset AddressBook com.4d.4d
tccutil reset Calendar com.4d.4d
```

After the dialog has been presented, one of the following status will be returned.

```json
{
  "success":true
}
```

```json
{
  "success":false,
  "errorMessage":"permission denied"
}
```

```json
{
  "success":false,
  "errorMessage":"permission restricted"
}
```

```json
{
  "success":false,
  "errorMessage":"permission not determined"
}
```
