![](https://raw.githubusercontent.com/stax76/mpv.net/master/img/mpvnet.png)

![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed/stax76/mpv.net) ![GitHub closed issues](https://img.shields.io/github/issues-closed/stax76/mpv.net) ![GitHub All Releases](https://img.shields.io/github/downloads/stax76/mpv.net/total) ![GitHub tag (latest by date)](https://img.shields.io/github/tag-date/stax76/mpv.net) ![GitHub stars](https://img.shields.io/github/stars/stax76/mpv.net) [![PayPal donate button](https://img.shields.io/badge/paypal-donate-yellow.svg)](https://www.paypal.me/stax76)

# 🎞 mpv.net

mpv.net is a modern media player for Windows that works just like [mpv](https://mpv.io).

#### Graphical User Interface

Modern GUI that supports customizable color themes.

#### Command Line Interface

mpv.net has the [CLI of mpv](https://mpv.io/manual/master/#options).

#### High quality video output

libmpv has an OpenGL based video output that is capable of many features loved by videophiles, such as video scaling with popular high quality algorithms, color management, frame timing, interpolation, HDR, and more.

#### On Screen Controller

The OSC of libmpv offers play controls with a modern flat design. ([Screenshot](#main-window-screenshot))

#### GPU video decoding

libmpv leverages the FFmpeg hwaccel APIs to support DXVA2 video decoding acceleration.

#### Active development

mpv.net is under active development. Want a feature? Post a [patch](https://github.com/stax76/mpv.net/pulls) or [request it](https://github.com/stax76/mpv.net/issues)!

#### Based on libmpv

mpv.net is based on libmpv which offers a straightforward C API that was designed from the ground up to make mpv usable as a library and facilitate easy integration into other applications. mpv is like vlc not based on DirectShow or Media Foundation. 

Table of contents
-----------------

- [Features](#features)
- [Screenshots](#screenshots)
- [Download](#download)
- [Installation](#installation)
- [Manual](#manual)
- [Context Menu](#context-menu)
- [Settings](#settings)
- [Scripting](#scripting)
- [Extensions](#extensions)
- [Architecture](#architecture)
- [Support](#support)
- [Links](#links)
- [Changelog](#changelog)

## Features

- Very high degree of mpv compatibility, almost all mpv features are available
- Great usability due to everything in the application being searchable
- Open source built with modern tools
- Customizable context menu defined in the same file as the key bindings ([Screenshot](#context-menu-screenshot), [Defaults](https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt))
- Searchable config dialog ([Screenshot](#config-editor-screenshot), [Defaults](https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/mpv.conf.txt))
- Searchable input (key/mouse) binding editor ([Screenshot](#input-editor-screenshot), [Defaults](https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt))
- Configuration files that are easy to read and edit ([Manual](https://mpv.io/manual/master/#configuration-files))
- Searchable command palette to quickly find commands and keys ([Screenshot](#command-palette-screenshot))
- Modern graphical user interface with customizable color themes ([Screenshot](#config-editor-screenshot))
- [Extension API for .NET languages (C#, VB.NET and F#)](https://github.com/stax76/mpv.net/wiki/Extensions)
- Scripting API for Python, C#, Lua, JavaScript and PowerShell ([Wiki](https://github.com/stax76/mpv.net/wiki/Scripting))
- Language agnostic JSON IPC to control the player with a external programs
- On Screen Controler (OSC, play control buttons) ([Screenshot](#main-window-screenshot))
- [Command Line Interface](https://mpv.io/manual/master/#options)
- If started from a PowerShell terminal mpv.net will attach to the terminal and print status and debug output ([Screenshot](#terminal-screenshot))
- DXVA2 video decoding acceleration
- OpenGL based video output capable of features loved by videophiles, such as video scaling with popular high quality algorithms, color management, frame timing, interpolation, HDR, and more
- Search feature powered by [Everything](https://www.voidtools.com) to find and play media ([Screenshot](#media-search-screenshot))
- Extension to start mpv.net from Google Chrome ([Manual](Manual.md#chrome-extension))
- Extremely fast seek performance
- Very fast startup performance, video is usally ready to play in less then a second
- Usable as video player, audio player and image viewer with a wide range of supported formats
- All decoders are built-in, no external codecs have to be installed
- Setup as x64, x86, installer, portable, Chocolatey and Scoop ([Manual](Manual.md#installation))
- Build-in media streaming via youtube-dl
- File associations can be created by the setup and from the player
- External audio and subtitle files can either be loaded manually or automatically
- Screenshot feature with many options
- File history feature to log time and filename
- A-B loop feature
- Watch later feature to save the position
- Files can be enqueued from File Explorer ([Manual](Manual.md#open-with))
- Update check and update routine ([Manual](Manual.md#help--check-for-updates))
- [Manual](#manual)

## Screenshots

#### Main Window Screenshot

![Main Window](https://raw.githubusercontent.com/stax76/mpv.net/master/img/Main.png)

#### Context Menu Screenshot

Context menu defined in the input.conf file with dark mode support.

![Context Menu](https://raw.githubusercontent.com/stax76/mpv.net/master/img/Menu.png)

#### Config Editor Screenshot

A searchable config editor as alternative to edit the mpv.conf file manually.

![](https://raw.githubusercontent.com/stax76/mpv.net/master/img/ConfEditor.png)

#### Terminal Screenshot

mpv.net attached to a PowerShell terminal showing the OSD console.

![](https://raw.githubusercontent.com/stax76/mpv.net/master/img/Terminal.png)

#### Input Editor Screenshot

A searchable key and mouse binding editor.

![Input Editor](https://raw.githubusercontent.com/stax76/mpv.net/master/img/InputEditor.png)

#### Command Palette Screenshot

Forgot where a command in the menu is located or what shortcut key it has?
Just press F1 and find it easily in the searchable command palette.

![Command Palette](https://raw.githubusercontent.com/stax76/mpv.net/master/img/CommandPalette.png)

#### Media Search Screenshot

Media search feature powered by [Everything](https://www.voidtools.com) to find and play media.

![Media Search](https://raw.githubusercontent.com/stax76/mpv.net/master/img/MediaSearch.png)

## Download

Stable releases can be downloaded from the [Release page](releases).

Newer Beta versions can be downloaded from [OneDrive](https://1drv.ms/u/s!ArwKS_ZUR01g1ldoLA90tX9DzKTj?e=xITXbC) and [DropBox](https://www.dropbox.com/sh/t54p9igdwvllbpl/AADKyWpaFnIhdyosxyP5d3_xa?dl=0).

## Installation

mpv.net requires minimum .NET Framework 4.8 and Windows 7. For optimal results a modern graphics card is recommended.

Stable releases are compiled from the source and can be downloaded from the releases tab:

<https://github.com/stax76/mpv.net/releases>

Scoop can be used to install and update it:

```
scoop bucket add extras
scoop install mpv.net
```
If you instead use AppGet:

`appget install mpv-net`

Alternatively, Chocolatey can also be used:

`choco install mpvnet.install`

## Manual

[Manual](Manual.md)

## Context Menu

The context menu can be customized via input.conf file located in the config directory:

```Text
C:\Users\%username%\AppData\Roaming\mpv\input.conf
```

if it's missing mpv.net generates it with the following defaults:

<https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt>

input.conf defines mpv's key and mouse bindings and mpv.net uses comments to define the context menu.

## Settings

When mpv.net finds no config folder on startup it will ask for a location.

If a folder named portable_config next to the mpvnet.exe exists,
all config will be loaded from this folder only.

```Text
<startup>\portable_config\
```

mpv specific settings are stored in the file mpv.conf, if no mpv.conf file exists
mpv.net generates it with the following defaults:

<https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/mpv.conf.txt>

mpv.net specific settings are stored in the file mpvnet.conf

The input (key/mouse) bindings and the context menu definitions are stored in the
input.conf file, if it's missing mpv.net generates it with the following defaults:

<https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt>

mpv.net supports almost all mpv settings and features,
[limitations are listed in the wiki](https://github.com/stax76/mpv.net/wiki/Limitations).

The config folder can be opened from the context menu.

## Scripting

[Scripting wiki page](https://github.com/stax76/mpv.net/wiki/Scripting)

## Extensions

[Extensions wiki page](https://github.com/stax76/mpv.net/wiki/Extensions)

## Architecture

mpv.net is written in C# and runs on the .NET Framework

The Extension implementation is based on the [Managed Extensibility Framework](https://docs.microsoft.com/en-us/dotnet/framework/mef/).

Python scripting is implemented with IronPython which uses Python 2.7.

The main window is WinForms based, WinForms allows better libmpv integration compared to WPF, all other windows are WPF based.

The config editor adds it's controls dynamically and uses [TOML](https://en.wikipedia.org/wiki/TOML) to define it's
content, there are only two simple types, StringSetting and OptionSetting.

Third party components:

- [libmpv, the heard and soul of mpv.net](https://mpv.io/)
- [MediaInfo, no media related project could do without](https://mediaarea.net/en/MediaInfo)
- [Tommy, a single file TOML parser](https://github.com/dezhidki/Tommy)
- [IronPython, bringing Python to dotnet](https://ironpython.net/)
- [CS-Script, scripting with C#](http://www.csscript.net/)
- [Everything, a blazing fast file search service](https://www.voidtools.com)

## Support

Before making a support request for a particular issue, please try if it was already addressed in a newer [beta version](#download).

[Support thread in Doom9 forum](https://forum.doom9.org/showthread.php?t=174841)

[Support thread in VideoHelp forum](https://forum.videohelp.com/threads/392514-mpv-net-a-extendable-media-player-for-windows)

[Issue tracker](https://github.com/stax76/mpv.net/issues), feel free to use for anything mpv(.net) related.

You can support the development of mpv.net with a PayPal donation:

<https://www.paypal.me/stax76>

## Links

#### mpv.net

- wiki: <https://github.com/stax76/mpv.net/wiki>
- default key bindings: <https://github.com/stax76/mpv.net/blob/master/mpv.net/Resources/input.conf.txt>
- download: <https://github.com/stax76/mpv.net/releases>
- bugs and requests: <https://github.com/stax76/mpv.net/issues>

#### mpv

- website: <https://mpv.io/>
- manual: <https://mpv.io/manual/master/>
- wiki: <https://github.com/mpv-player/mpv/wiki>
- apps: <https://github.com/mpv-player/mpv/wiki/Applications-using-mpv>
- user scripts: <https://github.com/mpv-player/mpv/wiki/User-Scripts>
- default key bindings: <https://github.com/mpv-player/mpv/blob/master/etc/input.conf>
- download: <https://mpv.io/installation/>
- bugs and requests: <https://mpv.io/bug-reports/>

## Changelog

[Changelog](Changelog.md)
