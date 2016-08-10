This is a proof of concept project to show that Localytics does not work on **iOS 8** while simply having the Google/Analytics pod installed. iOS 9 works as it uses a different method to handle deep links.

By default the autoIntegrate is OFF. And it will work. You can verify it by tapping the link in the webview.

**Steps to break it**

1. Uncomment the autoIntegrate commented line in AppDelegate
2. Tap the link in webview again
3. Nothing is NSLogged

**Steps to UNBREAK it**

1. Comment away the Google/Analytics pod in Podfile
2. Run pod install
3. Run the app again and tap the link
4. Now the iOS 8 methods will NSLog in the console

At this point it doesn't matter if you have the Localytics autoIntegrate off or on, it will work regardless.

***Possible issues**

It might be that Google/Analytics (or one of the sub-pods it installs) changes some project setting that messes up something for Localytics. This is pure speculation though.

**Currently I have these versions**

FirebaseAnalytics (3.3.0)  
FirebaseInstanceID (1.0.8)  
Google (3.0.3)  
GoogleAnalytics (3.16.0)  
GoogleInterchangeUtilities (1.2.1)  
GoogleSymbolUtilities (1.1.1)  
GoogleUtilities (1.3.1)  
LocalyticsStaticFramework (4.0.1)  

Simulator/devices on iOS 8-8.4.1