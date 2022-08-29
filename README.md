# OneXplayer
OneXPlayer Script/configs


I originally wrote the scripts to work with the OneXPlayer and have found that the script works well with any new windows 11 computer. 

Since, I have added a menu of choices, and instead of multiple scripts you have only one to run now. 
https://github.com/01000001-01001110/OneXplayer/blob/main/menu.ps1

Here is what the menu looks like: <br>
![image](https://user-images.githubusercontent.com/48245017/186959047-24893bc7-d1b0-499b-8ff5-e08b4dfc4fe5.png)



Thank you, 
-Net

<h1>Running scripts from a shortcut</h1>
To set the second script to run from a desktop shortcut right click and select> New>ShortuctInside the new shortcut location type something to the effect of, "powershell.exe -noexit -ExecutionPolicy Bypass -File c:\users\username\stopsrvcs.ps1"Click Next, Name the shortcut whatever you would like, Finish


<h1>What does this script do?</h1>

First Creates a Restore Point named: "iNetsRestorePoint" in case anything bad happens. <br<<br>
Opens the Menu <pre>
    Press '1' Nuke bloatware.
    Press '2' Install Chrome
    Press '3' Install Firefox
    Press '4' Windows 11 Dark Mode
    Press '5' Windows 11 Light Mode
    Press '6' Install Live Tiles Anywhere
    Press '7' Install Quick Assist
    Press '8' Stop Services
    Press 'Q' to quit."</pre>

<br><br>

<h2>Option One Modifications:</h2>
<pre>Disable Windows Telemetry
Sets Show Known File Extensions
Deletes and removes People
Set Window Effects for performance increases, things like limiting animations and modifying delays
Stops Windows Power Throttling
Modifies the default location to start when opening Windows Explorer
Hides 3D Objects
Disables Feedback and Feedback Hub
Disables Activity History
Uninstalls Preinstalled applications
Disables Advertising and Tailored Experiences, and Error Reporting
Restricts Windows update Peer2Peer transmit to in network only
Disables Diagnostic Tracking Service
Disable WAP Push Service
Enables F8 boot menu for recovery
Disables Windows SuperFetch Service
Disable Location Tracking
Remove AutoLogger file and restricting directory
Disable Telemetry
Group SVCHost Processes
Remove News and Interests
Disabling Diagnostic Tracking Service
Remove Meet Now from Taskbar
Disable Numlock on startup<br><br>

<b>Removal of the following AppxPackages</b>
3DBuilder
3DViewer
AppConnector
BingFinance
BingWeather
BingNews
BingSports
BingTranslator
BingFoodAndDrink
BingHealthAndFitness
BingTravel
Getstarted
NetworkSpeedTest
News
Office.Lens
Office.Sway
Office.OneNote
OneConnect
Print3D
Wallet
Whiteboard
WindowsAlarms
WindowsMaps
WindowsPhone
WindowsSoundRecorder
CommsPhone
ScreenSketcH
YourPhone
EclipseManager
ActiproSoftwareLLC
AdobeSystemsIncorporated.AdobePhotoshopExpress
Duolingo-LearnLanguagesforFree
PandoraMediaInc
CandyCrush
BubbleWitch3Saga
Wunderlist
Sway
Speed Test
Viber
ACGMediaPlayer
OneCalendar
LinkedInforWindows
HiddenCityMysteryofShadows
HiddenCity
AdobePhotoshopExpress
HotspotShieldFreeVPN
MicrosoftStickyNotes
Microsoft3DViewer
MixedReality.Portal
MicrosoftSolitaireCollection
Groove
BingWeather
windowscommunicationsapps
Advertising.Xaml
ZuneMusic
ZuneVideo
Flipboard
Twitter
Facebook
Royal Revolt
WindowsFeedbackHub
SkypeApp
Getstarted
MicrosoftOfficeHub
WindowsMaps
People
YourPhone
Getstarted
CBSPreview
ParentalControls
ScreenSketch
GetHelp
Hulu
Netflix
Spotify
Messaging
</pre>

<h2>Option 2</h2><br><br>
Option Two is used to install Chrome, as well as MSEdgeRedirect to remove Edge as the default browser down to the system level.
<h2>Option 3</h2><br><br>
Option Three is used to install Firefox, as well as MSEdgeRedirect to remove Edge as the default browser down to the system level.
<h2>Option 4</h2><br><br>
Option Four is used to change the system theme to Dark Mode.
<h2>Option 5</h2><br><br>
Option Five is used to change the system theme to Light Mode.
<h2>Option 6</h2><br><br>
Option Six installs "Windows-8-like-tiles" on the computer. So you can have live tiles anywhere on the system you want.
<h2>Option 7</h2><br><br>
Option Seven is used to remove the Microsoft Quick Assist that is bundled with Windows, and replaces it with the new Quick Assist from the Microsoft Store.
<h2>Option 8</h2><br><br>
Option Eight is used before playing a game. It removes a few more services that are not vital to gameplay from running. To start them again reboot.

Option Q
