# 4d-plugin-ical-v3
Updated version of iCal API

### Remarks

You must first call ``iCal_Request_permisson`` to ask permission from the user to access their calendar. It is an asynchronous call, which means that in the first instance, it will always return ``{"success":false}``. Later, after the user has granted permission, you might get ``{"success":true}``.

2 dialogs might be presented in total;

<img width="266" alt="スクリーンショット 2020-03-17 9 51 06" src="https://user-images.githubusercontent.com/1725068/76811694-d8518d00-6835-11ea-85a3-5556bc3522f6.png">

<img width="266" alt="スクリーンショット 2020-03-17 9 51 10" src="https://user-images.githubusercontent.com/1725068/76811698-dc7daa80-6835-11ea-9e40-d8352d98c0b9.png">
