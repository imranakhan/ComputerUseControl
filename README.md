# ComputerUseControl
Powershell script and windows task XML to autolock computer repeatedly after a time at night

The script locks the computer only when it sees that the computer is unlocked in the time window specified.
We can update the XML for the Windows task with the appropriate times/frequency before importing it into Task scheduler

Currently set to kick off with Windows Task Scheduler at 10:45pm, trigger every 5 minutes for an hour (Assuming the user gives up and goes to bed by then)
