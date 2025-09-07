@echo off
set "PLAYNITE_PATH=%LOCALAPPDATA%\Playnite\Playnite.FullscreenApp.exe"
set "VIDEO_PATH=C:\PlayniteShell\Videos\BootVideo.mp4"
set "MPV_PATH=C:\PlayniteShell\mpv.exe"


:: Start Playnite hidden (preloading while video plays)
start "" "%PLAYNITE_PATH%" --hidesplashscreen

:: Play Boot Video with mpv (fullscreen, no OSD, wait until finished)
start "" /wait "%MPV_PATH%" ^
  --ontop --no-terminal --fullscreen --no-border --quiet --no-osc ^
  --fs-screen=0 ^ "%VIDEO_PATH%"
taskkill /f /im mpv.exe >nul 2>&1

exit