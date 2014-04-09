
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
cinst MicrosoftSecurityEssentials
cinst mongodb
cinst nodejs.install
cinst paint.net
cinst postgresql
cinst PowerShell
cinst procexp
cinst putty
cinst python
cinst resharper
cinst ruby
cinst Silverlight
cinst skype
cinst SublimeText3
cinst vagrant
cinst virtualbox
cinst vlc
cinst windirstat

# FAILED
mongo, postgres, resharper

# TODO
cinst mysql
cinst javaruntime
cinst java.jdk

# VisualStudio
# SQL Server
# Google Talk Plugin
# Java 7
# Java 8
# LastPass
# .NET 4.5.1
# Microsoft SQL Server
# Microsoft Visual Studio

