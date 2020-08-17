# ComputerUseControl
Powershell script and windows task XML to autolock computer repeatedly after a time at night

The script locks the computer only when it sees that the computer is unlocked in the time window specified.
We can update the XML for the Windows task with the appropriate times/frequency before importing it into Task scheduler

Currently set to kick off with Windows Task Scheduler at 10:45pm, trigger every 5 minutes for an hour (Assuming the user gives up and goes to bed by then)

#  Unmute the computer at a certain time in the morning as an alarm
Added the ability to Mute and Unmute computer at a certain time and play Surah Yaseem to wake me up

Using the utility nircmd with Task scheduler to unmute and speak a file
http://www.nirsoft.net/utils/nircmd.html

Using the Voice application from Eli Fulkerson to do text to speech
https://www.elifulkerson.com/projects/commandline-text-to-speech.php


To play the text
voice -k speak.txt

Telegram Notifications
https://dev.to/rizkyrajitha/get-notifications-with-telegram-bot-537l

To stop VLC you need to do vlc vlc://quit


https://api.telegram.org/bot<YourBOTToken>/getUpdates

Use API to get the list of images, and then send the image to telegram
https://wallhaven.cc/help/api

We need three feeds:

Motivation quote
motivational Image
Fitness images
