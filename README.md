# WeatherCal
Weather and Calendar based dynamic background

This dynamic desktop background is reliant on GeekTool, JSON Helper, Weather Underground API, and a couple AppleScripts. This is my first time using all of these so please point out poor code so that I can improve.

The original functional version 1.0 of the code uses WeatherChange.scpt, CalendarEventsPull, WeatherCalHTMLConstructor.scpt, CreateEventArchive.scpt, and BackgroundWeatherChange.scpt. These 5 scripts are all run within a GeekTool Group called Base_Group at different frequencies.

0. CreateEventArchive.scpt
  Creates an archive of all recurring events by transfering events from their original calendars into a calendar named "Archive" so that old events would not have to be parsed through by CalendarEventsPull.scpt when it runs, thus somewhat improving speed. In the future, the script should be triggered by an event with summary of "Archive Calendars" in any calendar.
  
1. CalendarEventsPull.scpt
  The script ouputs info about the next 72 hours of events into a text file "CalInfo.txt". A large portion of the script and its subroutines are devoted to determining if recurring events would be reoccurring within the next 72 hours. The script does not pull any info on any events that have already started and are currently ongoing when the script is run.

2. WeatherChange.scpt
  Pulls weather info from Weather Underground's API with the assistance of JSON Helper. Sets the current weather condition and determines the current relative time of day. Places the next 72 hours of temperature and probability of precipiation info into a text file "WeatherInfo.txt". Anyone can get their own free access to the API on weather underground's website, as long as they don't need too many pulls from the API per day or minute. The current location for the weather information has to be manually set within the script, although alternatives exist online.
  
3. WeatherCalHTMLconstructor.scpt
  Creates an HTML page with a table containing columns for the hour, event, temperature, and probability of precipitation. Uses the text files created by CalendarEventsPull.scpt and WeatherChange.scpt to complete the cells. The formatting for the HTML file is done by WeatherCal.css
  
4. BackgroundWeatherChange.scpt
  Changes the desktop background based on the active GeekTool Group. In the future, this should be changed to the current weather/time-of-day conditions of those listed in groupList in WeatherChange.scpt
