# WeatherCal
Weather and Calendar based dynamic background
Current Version is 2.0
Check the readme.md in your download of this repository to see if you have the latest version

This dynamic desktop background is reliant on GeekTool, JSON Helper, Weather Underground API, and a couple AppleScripts. This is my first time using all of these so please point out poor code so that I can improve.

The original functional version 1.0 of the code used WeatherChange.scpt, CalendarEventsPull.scpt, WeatherCalHTMLConstructor.scpt, CreateEventArchive.scpt, and BackgroundWeatherChange.scpt. These 5 scripts are all run within a GeekTool Group called Base_Group at different frequencies.

Version 2.0 uses WeatherCalMain.scpt to run the other scripts: WeatherChange.scpt, CalendarEventsPull.scpt, and WeatherCalHTMLConstructor.scpt  
Changes include:  
  --Use of a central script to run the other scripts, thus only requiring one shell geeklet and one html geeklet  
  --Updated comments explaining the scripts  
  --Updated paths so the username does not need to be changed  
  --Updated css to make the background and calendar look nicer and display on all backgrounds instead of only 1  
  --BackgroundWeatherChange.scpt is now obselete  


CreateEventArchive.scpt  
  --Creates an archive of all recurring events by transfering events from their original calendars into a calendar named "Archive" so that old events would not have to be parsed through by CalendarEventsPull.scpt when it runs, thus somewhat improving speed. In the future, the script should be triggered by an event with summary of "Archive Calendars" in any calendar.
  
  
CalendarEventsPull.scpt  
  --The script ouputs info about the next 72 hours of events into a text file "CalInfo.txt". A large portion of the script and its subroutines are devoted to determining if recurring events would be reoccurring within the next 72 hours. The script does not pull any info on any events that have already started and are currently ongoing when the script is run.


WeatherChange.scpt  
  --Pulls weather info from Weather Underground's API with the assistance of JSON Helper. Sets the current weather condition and determines the current relative time of day. Places the next 72 hours of temperature and probability of precipiation info into a text file "WeatherInfo.txt". Anyone can get their own free access to the API on weather underground's website, as long as they don't need too many pulls from the API per day or minute. The current location for the weather information has to be manually set within the script, although alternatives exist online.
  
  
WeatherCalHTMLconstructor.scpt  
  --Creates an HTML page with a table containing columns for the hour, event, temperature, and probability of precipitation. Uses the text files created by CalendarEventsPull.scpt and WeatherChange.scpt to complete the cells. The formatting for the HTML file is done by WeatherCal.css or WeatherCal2.css. The settings for the html geeklet that displays the constructed html page are as follows:  
    --URL: file:///Users/<YOURUSERNAME>/Documents/GeekTool/calWeatherInfo.html  
    --Refresh text box: 60  
    --Zoom: 84   You can change this to whatever you want. The HTML will adjust accordingly  
    --Stretch the html geeklet so that it covers the entire screen by dragging the bottom right corner  

  --As of version 2.0 of WeatherCal, there is an option (that is set by default to false) for having the calendar without the background.  WeatherChange.scpt and CalendarEventsPull.scpt are called directly from WeatherCalHTMLconstructor.
  
  
WeatherCalMain.scpt
  --This is the script that is run by the shell geeklet. It is set to run every 30 minutes and within 30 seconds of the computer turning on. The settings for the geeklet are as follows:  
    --Command text box: osascript "/Users/<YOURUSERNAME>/documents/GeekTool/WeatherCalMain.scpt"  
    --Refresh text box: 60  
    --Timeout text box: 120  
  
  
BackgroundWeatherChange.scpt  
  --Now Obselete  
  --Changes the desktop background based on the active GeekTool Group. In the future, this should be changed to the current weather/time-of-day conditions of those listed in groupList in WeatherChange.scpt  
  
  
## Setup
1. Download this repository as a zip file into your documents folder. Double-click the zip file to extract the contents.
2. Rename the new folder "WeatherCal-master" to "GeekTool". If you already have a folder in documents called "GeekTool", move all the contents of "WeatherCal-master" into the "GeekTool" folder.
3. Install GeekTool from https://www.tynsoe.org/v2/geektool/ if you don't have it already
4. Install JSON Helper from http://www.mousedown.net/mouseware/JSONHelper.html if you don't have it already
5. Get a free Weather Underground API key from https://www.wunderground.com/weather/api/d/pricing.html if you don't have one already
6. Open WeatherChange.scpt in the Script Editor application. Search for "set WURL to" in the script. In between "api/" and "/hourly10day" replace the placeholder text with your api key. At the end of the same line, replace "KCAARCAT10" with the weather underground station id for your local station. The id should be at the end of the URL of your local station. Not all stations have this id.
7. Setup a shell geeklet that runs WeatherCalMain.scpt. See the above portion on the script to see the setup for the geeklet. You can move this geeklet so that the top (and the return message) will not be visible on the screen.
8. Setup a html geeklet that displays the HTML page that is created. See the above portion on WeatherCalHTMLconstructor.scpt to see the setup for the geeklet.
9. Make sure that the geektool group the geeklets are inside of are enabled and set geektool to enable.
10. If you have an issue with the setup, see troubleshooting below.
11. If you think the setup instructions should be altered or are missing some explanation, see contact information at the end of troubleshooting below.

Additional Optional Steps:  
  --If you do not want weather-based background and would rather have your own backgrounds:  
    1. Open WeatherCalHTMLconstructor.scpt in the Script Editor application.  
    2. Search for "Background to true". Read the notes next to each of the declarations and change whichever one to "false"  
    3. If you left addBackground to true and set addWeatherToBackground to false, you will need a folder named "Background" containing all of the images you would like displayed along with the calendar. If there is only one image, it will always be displayed. If you add multiple images into the folder, it will randomly rotate between them. The images CAN NOT be ALIASES.'  
    
  --If you want the calendar displayed on the left side of the screen instead of the right but still have a background along with it:  
    1. Open WeatherCal.css in the TextEdit application.  
    2. The third line after "table {" should say "right: 8px;". Change the "right" to "left". Save the file.  

## Troubleshooting
  1. If you do not see the background/calendar appearing on your background, try opening the html page into a web browser such as Safari or Chrome. You should do this by copy-pasting the URL from the geeklet directly into your browser. If your browser displays the background, move to step 2. If it does not, move to step 3.  
  2. Open the geeklet preferences  
    a) Double check that your geeklet settings are the same as the settings in this readme.  
    b) Check that the geeklets are in a GeekTool group and that GeekTool group is enabled.  
    c) Check that geektool is enabled and not just open  
    d) If you still have issues, see my contact info below  
    
  3. Open the Script Editor application  
    a) Run WeatherChange.scpt with the log enabled (command 3) and look for any errors in the log  
    b) Run CalendarEventsPull.scpt with the log enabled and look for any errors in the log  
    c) Run WeatherCalHTMLconstructor.scpt with the log enabled and look for any errors in the log  
    d) Run WeatherCalMain.scpt with the log enabled and look for any errors in the log. Note that the refresh rate of WeatherCalMain.scpt is not the same as the shell geeklet. If you want the HTML page to update instantly, run WeatherCalHTMLconstructor.scpt instead of WeatherCalMain.scpt and open the HTML file in a web browser.  
    e) If you still have issues, see my contact info below

## Contact Info:
The best way to contact me is through reddit at /u/Colin03129. You can either comment on this post: https://np.reddit.com/r/GeekTool/comments/65kx28/finished_my_backgroundchanging_weathercalendar/ or send me a message directly. You can also email me at ctd119@humboldt.edu
    


