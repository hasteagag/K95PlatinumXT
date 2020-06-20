# K95PlatinumXT
an on screen keyboard with appearance like the Corsair K95 Platinum XT

this project utilizes G33kDude's Neutron Class in AutoHotkey.  His project is linked here:

and is a way to render HTML CSS JS (basically web content) inside IE11 via ActiveX through browswer emulation.  It has two way communication allowing for a mutlitude of projects like this one.  

Project endeavors to mimic the Corsair K95 Platinum Xt (Disclaimer: I am not affiliated with Corsair in any way other than as a fanboy).

The basis is an HTML file with an orthographic representation of the keyboard as the background, on which divs are drawn in the locations of the pressable keys.  The keys are initially styled with a bland white and blurred box-shadow effect.

The Neutron window after initialization is sized to the keyboard.  The Corsair SDK is also utiliized to update the colors on the on screen keyboard's keys to represent the colors on the board (with a reasonable representative fidelity).  A separate brightness control is included on the on screen keyboard separate from the hardware as afaik there is no current implementation in the Corsair iCUE SDK (available here:  ) to read brightness from the keyboard.

Using the windows API and SendMessage WMPCOPYDATA (with 100% spoon fed assistance from CloakerSmoker on the AHK Discord) we read the RGB values efficiently from the Corsair SDK App that runs along side this project and gets hidden after running.  AHK detects the instance if it is already running, in order to avoid duplication on new instances or reload.

SDK updates are sent via SendMessage to AHK, and after readign the values, an array is updated, and a function is called to update the styling on the "keys" as well as the faux outer glow via the blurred box shadow css.  The Win Lock, Brightness and Profile Switch buttons have been over ridden in their functionality in the following manner:

Clicking the Profile Switch button on the OSK will randomly generat the colors and turn off the SDK updater.  

Clicking the Brightness button on the OSK will rotate between what I beleive the intensity values are on the corresponding hardware, but they're presently distinct and agnostic of one another.

Clicking the Win Lock button on the OSK will cease updating the colors on the keyboard reducing system overhead as this is a somewhat involved and in efficient task as written.  Efficiencies could be realized by by calling the SDK functions from AHK using DLL call rather than this roundabout method and relying on the windows API, although that appears somewhat complex to implement.

Finally, the steak and potatoes, we need to send events from our key presses on the OSK.  This is a two step process:

First grab the Hwnd of the currently in focus window prior to display of the OSK.  Under normal circumstances, the keyboard fires to the window with focus, so that is what we intend to replicate.

Second, we grab the key pressed via the event sent to AHK from Neutron (from Javascript) as its name is roughly associated with the Autohotkey keyname by classname, then to get more specific...and flexible, we have an array of keys that get looped over and matches will mean the user pressed that key and its corresponding key should be emitted, after refocusing the active window.  

Other approaches worth looking at might be controlsend, so the OSK can stay active, however your mileage may vary as some applications seek keypress messags differently.  With modifiers, we test for their actual presence on the real keyboard, but also allow one second time outs (certianly can be changed to your liking) to register modifiers on the OSK.  One may want to restart the timer for all modifiers if subsequent modifiers are pressed, as that may be quite tight in multi modifier key combinations, but save that for a later date.

Some bugs may exist and feedback is welcome.
