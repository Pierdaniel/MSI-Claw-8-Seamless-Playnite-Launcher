# MSI-Claw-8-Seamless-Playnite-Launcher
This project combines two existing guides (GameLauncherShell and mimouBEATER’s Reddit guide ) to create a Playnite-first startup experience on the MSI Claw 8. 

⚠️ Disclaimer This guide is experimental and may cause issues with your MSI Claw 8 (or similar devices).
I am not responsible for data loss, malfunctions, or damage. Tested on my MSI Claw 8 AI+. If you follow the steps carefully and create a full backup, you should be able to recover if something goes wrong.

🛠️ Prerequisites (Mandatory) Before starting, complete these steps:
💾 Create a full backup or restore point — do not skip.
🖥️ Finish initial MSI Claw 8 setup: Install all Windows updates, Apply tweaks, Disable Memory Integrity, Install Playnite and buttery-taskbar
👤 Enable automatic login with a local admin account via Registry Editor. Unsure if this works with Microsoft accounts ( did not test )
🎮 Download and install your games.
🔋 Configure the power button to Hibernate.

⚙️ Setup Instructions
🔑 1. Enable Auto Login
Follow Microsoft’s official guide or the second link: 
[Turn on automatic logon](https://learn.microsoft.com/en-us/troubleshoot/windows-server/user-profiles-and-logon/turn-on-automatic-logon)

this may be outdated 
[Guide Win Logon](https://www.minitool.com/data-recovery/windows-11-auto-login.html)

📂 2. Place the Project Files
Extract the ZIP directly into C:\ so the structure looks like:

C:\PlayniteShell\PlayniteShell.bat

C:\PlayniteShell\PlayniteShell.vbs

C:\PlayniteShell\mpv.exe and so on
...

🖼️ 3. Customize Windows & Playnite
Change Wallpaper, Login Screen, and User Picture using the files in the PlayniteShell folder.
Configure Playnite for a PS5-style look (or any theme you prefer).

🎨 4. Playnite Add-ons & Metadata -> Install these extensions:

DKG Theme Modifier → Set display/hide, disable video, enable intro (3–4s), save.
Extra Metadata Tools → Add background video from Install\BackgroundVideo.
anything else you like. 

🧪 5. Test Your Script
Run PlayniteShell.bat to check performance. Optimized for speed and smoothness.

⚠️ Note: Windows taskbar may briefly appear (~1s) during video playback.

✅ Default: MPV ( already in the zip )
⚙️ Alternatives: ffplay or VLC

📝 6. Registry Modification (Final Step)

Open Registry Editor (regedit.exe).
Navigate to:
HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
Edit the Userinit entry. By default -> C:\WINDOWS\system32\userinit.exe

Change to -> C:\WINDOWS\system32\userinit.exe, C:\PlayniteShell\buttery-taskbar.exe, wscript.exe C:\PlayniteShell\PlayniteShell.vbs

⚠️ Important:
Keep userinit.exe first → removing it breaks login.

🔄 Restart & Recover
Restart and enjoy a smoother boot into Playnite.
If issues occur: Plug in a USB-C keyboard, open Task Manager (Ctrl + Shift + Esc) → run explorer.exe

if something is missing, kindly notify me. Enjoy my first project


## 🙏 Credits

This project is community-driven and not intended for any source of income.  
It relies on external guide and software including:  

- [GameLauncherShell](https://github.com/quangmach/GameLauncherShell) by [quangmach](https://github.com/quangmach)
  
- [Reddit guide](https://www.reddit.com/r/playnite/comments/1kzhq1i/how_do_i_boot_straight_into_playnite_without/) by [mimouBEATER](https://www.reddit.com/user/mimouBEATER)  

- [Playnite](https://playnite.link/) – open-source game launcher
  
- [MPV](https://mpv.io/) – open-source media player  

All rights for these tools belong to their respective authors. This repository only provides scripts and configuration steps to integrate them on MSI Claw 8
Feel free to use, modify, and share, but keep the credits.

