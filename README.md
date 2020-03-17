# 4d-plugin-ical-v3
Updated version of iCal API

### Remarks

You must first call ``iCal_Request_permisson`` to ask permission from the user to access their calendar. It is an asynchronous call, which means that in the first instance, it will always return ``{"success":false}``. Later, after the user has granted permission, you might get ``{"success":true}``.

