# ComputerUseControl
Powershell script and windows task XML to autolock computer repeatedly after a time at night

The script locks the computer only when it sees that the computer is unlocked in the time window specified.
We can update the XML for the Windows task with the appropriate times/frequency before importing it into Task scheduler

Currently set to kick off with Windows Task Scheduler at 10:45pm, trigger every 5 minutes for an hour (Assuming the user gives up and goes to bed by then)

Added the ability to Mute and Unmute computer at a certain time.

Using the utility nircmd with Task scheduler to unmute and speak a file
http://www.nirsoft.net/utils/nircmd.html

Using the Voice application from Eli Fulkerson to do text to speech
https://www.elifulkerson.com/projects/commandline-text-to-speech.php


To play the text
voice -k speak.txt

Telegram Notifications
https://dev.to/rizkyrajitha/get-notifications-with-telegram-bot-537l
