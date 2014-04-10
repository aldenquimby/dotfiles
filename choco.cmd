
# install chocolatey
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin

# chocolatey packages
cinst 7zip
cinst ChocolateyGUI
cinst dotPeek
cinst dropbox
cinst Firefox
cinst git
cinst gitextensions
cinst GoogleChrome
cinst intellijidea-ultimate
cinst kdiff3
cinst linqpad4
cinst maven
cinst MicrosoftSecurityEssentials
cinst nodejs.install
cinst paint.net
cinst PowerShell
cinst procexp
cinst putty
cinst python
cinst ruby
cinst Silverlight
cinst skype
cinst SublimeText3
cinst vagrant
cinst virtualbox
cinst vlc
cinst windirstat

# TODO THINGS THAT FAILED
# cinst mongodb
# cinst mysql
# cinst postgresql

# ONLY WORKS AFTER VISUAL STUDIO INSTALLED
# cinst resharper

# TODO THINGS NOT FOUND
# Google Talk Plugin
# Java 8
# Microsoft SQL Server
# Microsoft Visual Studio
