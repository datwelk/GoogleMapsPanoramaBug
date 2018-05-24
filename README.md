## Instructions
- Add an API key on line 25 of AppDelegate.m. 
- Enable an Exception Breakpoint.
- Build & run the app. 
- Hit the button that reads "Crash" in the top right of the navigation bar. Xcode will break on an exception thrown in the Google Maps SDK. On stepping over, the panorama view turns black. See below for the backtrace.


![backtrace](https://github.com/datwelk/GoogleMapsPanoramaBug/blob/master/backtrace.png?raw=true)
