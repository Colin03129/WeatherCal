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
  --Creates an HTML page with a table containing columns for the hour, event, temperature, and probability of precipitation. Uses the text files created by CalendarEventsPull.scpt and WeatherChange.scpt to complete the cells. The formatting for the HTML file is done by WeatherCal.css or WeatherCal2.css. The settings for the geeklet are as follows:
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
1. Make a new folder named GeekTool in your documents folder if one does not exist already
2. Make another new folder within the GeekTool folder named Weather. This will store all the background images.
3. ...Will be continued within the next hour...
