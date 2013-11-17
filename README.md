# Insomnia-PhoneGap-Plugin

by [Eddy Verbruggen](http://www.x-services.nl)

1. [Description](https://github.com/EddyVerbruggen/Insomnia-PhoneGap-Plugin#1-description)
2. [Installation](https://github.com/EddyVerbruggen/Insomnia-PhoneGap-Plugin#2-installation)
	2. [Automatically (CLI / Plugman)](https://github.com/EddyVerbruggen/Insomnia-PhoneGap-Plugin#automatically-cli--plugman)
	2. [Manually](https://github.com/EddyVerbruggen/Insomnia-PhoneGap-Plugin#manually)
	2. [PhoneGap Build](https://github.com/EddyVerbruggen/Insomnia-PhoneGap-Plugin#phonegap-build)
3. [Usage](https://github.com/EddyVerbruggen/Insomnia-PhoneGap-Plugin#3-usage)
4. [Credits](https://github.com/EddyVerbruggen/Insomnia-PhoneGap-Plugin#4-credits)
5. [License](https://github.com/EddyVerbruggen/Insomnia-PhoneGap-Plugin#5-license)

## 1. Description

Prevent the screen of the mobile device from falling asleep.

* The device will never fall asleep after calling `keepAwake`.
* After making your app practically a zombie, you can allow it to sleep again by calling `allowSleepAgain`.
* Works on Android, probably every version you'd care about.
* Works on iOS, probably every version you'd care about.

## 2. Installation

### Automatically (CLI / Plugman)
Insomnia is compatible with [Cordova Plugman](https://github.com/apache/cordova-plugman) and ready for the [PhoneGap 2.9.0 CLI](http://docs.phonegap.com/en/2.9.0/guide_cli_index.md.html#The%20Command-line%20Interface_add_features), here's how it works with the CLI:

```
$ phonegap local plugin add https://github.com/EddyVerbruggen/Insomnia-PhoneGap-Plugin.git#phonegap-2.x

```
or
```
$ cordova plugin add https://github.com/EddyVerbruggen/Insomnia-PhoneGap-Plugin.git#phonegap-2.x
```
run this command afterwards:
```
$ cordova prepare
```
Then reference `Insomnia.js` in `index.html`, after `cordova.js`/`phonegap.js`. Mind the path:
```html
<script type="text/javascript" src="js/plugins/Insomnia.js"></script>
```

### Manually

1\. Add the following xml to your `config.xml` in the root directory of your `www` folder:
```xml
<!-- for iOS -->
<feature name="Insomnia">
	<param name="ios-package" value="Insomnia" />
</feature>
```
```xml
<!-- for Android as plugin (deprecated) -->
<plugin name="Insomnia" value="nl.xservices.plugins.Insomnia"/>
```

```xml
<!-- for Android as feature -->
<feature name="Insomnia">
  <param name="android-package" value="nl.xservices.plugins.Insomnia" />
</feature>
```

2\. Grab a copy of Insomnia.js, add it to your project and reference it in `index.html`:
```html
<script type="text/javascript" src="js/Insomnia.js"></script>
```

3\. Download the source files for iOS and/or Android and copy them to your project.

iOS: Copy `Insomnia.h` and `Insomnia.h` to `platforms/ios/<ProjectName>/Plugins`

Android: Copy `Insomnia.java` to `platforms/android/src/nl/xservices/plugins` (create the folders)

### PhoneGap Build

Insomnia works with PhoneGap build too. You can implement the plugin with these simple steps.

1\. Add the following xml to your `config.xml` to always use the latest version of this plugin:
```xml
<gap:plugin name="nl.x-services.plugins.insomnia" />
```
or to use this exact version:
```xml
<gap:plugin name="nl.x-services.plugins.insomnia" version="2.0" />
```

2\. Reference the JavaScript code in your `index.html`:
```html
<!-- below <script src="phonegap.js"></script> -->
<script src="js/plugins/Insomnia.js"></script>
```

## 3. Usage
```html
  <button onclick="window.plugins.insomnia.keepAwake()">keep awake</button>
  <button onclick="window.plugins.insomnia.allowSleepAgain()">allow sleep again</button>
```

## 4. CREDITS ##

This plugin was enhanced for Plugman / PhoneGap Build by [Eddy Verbruggen](http://www.x-services.nl).
The Android code was entirely created by the author.
The iOS code was heavily inspired by [Wolfgang Koller](https://github.com/simplec-dev/powermanagement).

## 5. License

[The MIT License (MIT)](http://www.opensource.org/licenses/mit-license.html)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.