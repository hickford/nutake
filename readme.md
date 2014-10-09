NuTake
=====

A Chrome browser extension that adds 'download zip' links to package pages on the [NuGet.org website](http://nuget.org). This is the `.nupkg` file that Visual Studio downloads, but the Nuget.org website hides the link.

How to install
------------

From the Google Chrome web store at https://chrome.google.com/webstore/detail/nutake/ibhhbcaipjilldjkhhblhgdedjgoecap?hl=en&gl=GB

Usage
-----

1. Browse to a NuGet package page, eg. http://www.nuget.org/packages/Newtonsoft.Json/4.5.2
2. Follow the download link, eg. 'Download Newtonsoft.Json-4.5.2.zip'

How to build
----------

[![Build Status](https://travis-ci.org/hickford/nutake.svg)](https://travis-ci.org/hickford/nutake)

Install [Nodejs](http://nodejs.org)

    npm install -g coffee-script
    coffee --compile --output lib src
