NuTake
=====

A Google Chrome browser extension to make the website [NuGet.org website](http://nuget.org) easier to use.

How to install
------------

From the Google Chrome web store at <https://chrome.google.com/webstore/detail/nutake/ibhhbcaipjilldjkhhblhgdedjgoecap?hl=en&gl=GB>

Usage
-----

1. Browse to a NuGet package page, eg. http://www.nuget.org/packages/Newtonsoft.Json/4.5.2
2. Follow the 'Download .nupkg file' link

How to build
----------

Install [Nodejs](http://nodejs.org)

    npm install -g coffee-script
    coffee --compile --output lib src
