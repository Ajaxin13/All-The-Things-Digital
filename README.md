## Java-TestNg-Selenium
[![Travis Status](https://travis-ci.org/saucelabs-sample-test-frameworks/Java-TestNG-Selenium.svg?branch=master)](https://travis-ci.org/saucelabs-sample-test-frameworks/Java-TestNG-Selenium)

This code is provided on an "AS-IS” basis without warranty of any kind, either express or implied, including without limitation any implied warranties of condition, uninterrupted use, merchantability, fitness for a particular purpose, or non-infringement. Your tests and testing environments may require you to modify this framework. Issues regarding this framework should be submitted through GitHub. For questions regarding Sauce Labs integration, please see the Sauce Labs documentation at https://wiki.saucelabs.com/. This framework is not maintained by Sauce Labs Support.

### Environment Setup

1. Global Dependencies
    * [Install Maven](https://maven.apache.org/install.html)
    * Or Install Maven with [Homebrew](http://brew.sh/)
    ```
    $ brew install maven
    ```
2. In the folder "src/test/resources", adapt the files paramCfg.json, browsersCfg.json and devicesCfg.json using your editor of choice (an IDE or any simple editor) to use your own credentials as well as the  home page information and the browsers/devices that correspond to the tests you want to run
    * Adapt the file paramCfg.json: 
    ```
    {
      "SAUCE_USERNAME":"your Sauce Labs username",
      "SAUCE_ACCESS_KEY":"your Sauce Labs access key",
      "TO_WEB_ACCESS_KEY":"your TestObject Web API Key",
      "TO_ANDROID_ACCESS_KEY":"your TestObject Android API Key",
      "TO_IOS_ACCESS_KEY":"your TestObject iOS API Key",
      "DESKTOP_HOMEPAGE_URL":"your desktop homepage url",
      "MOBILE_WEB_HOMEPAGE_URL":"your mobile web homepage url"
    	}
    ```
    * Add the browsers you want to test under browsersCfg.json: 
     ```
     [
        ["browser","version","environment","platform"] ,
        ["browser","version","environment","platform"] ,
        ["browser","version","environment","platform"]
          
     ]
     ```
     
     Below are some examples. Feel free to add additional arrays or (delete some) depending on the number of browsers you want to test.
     ```
     [
          ["firefox","49.0","Windows 10","DesktopWeb"],
          ["safari","latest","OS X 10.11","DesktopWeb"],
          ["chrome", "6.0", "Android Emulator", "Android"],
          ["Safari", "10.3", "iPhone 6 Simulator", "iOS"],
          ["Safari", "9.3", "iPad 2 Simulator", "DesktopWeb"],
          ["TestObject - Safari", "10.0", "iPhone_6_Plus_real_us", "iOS"],
          ["TestObject - Chrome", "7.0", "Samsung_Galaxy_S7_real", "Android"]
      ]
      ```
     
     * Add the devices you want to test under devicesCfg.json: 
     
      ```
      [
          ["device","version","device_full_name","platform"] ,
          ["device","version","device_full_name","platform"] ,
          ["device","version","device_full_name","platform"] 
               
      ]
      ```
      Below are some examples. Feel free to add additional arrays or (delete some) depending on the number of browsers you want to test.
      ```
      [
      ["TestObject - Google Pixel", "7.0", "Google_Pixel_real", "MobileNative - Android"],
      ["TestObject - iPad 3", "9.3", "iPad_3_16GB_real_2", "MobileNative - iOS"],
      ["", "6.0", "Android Emulator", "MobileNative - Android"],
      ["", "10.3", "iPhone 6 Simulator", "MobileNative - iOS"],
      ["", "9.3", "iPad 2 Simulator", "MobileNative - iOS"]
      ]
      ```
          
3. Project Dependencies
	* Check that Packages are available
	```
	$ cd allTheThingsDigital
	$ mvn test-compile
	```
	* You may also want to run the command below to check for outdated dependencies. Please be sure to verify and review updates before editing your pom.xml file. The updated packages may or may not be compatible with your code.
	```
	$ mvn versions:display-dependency-updates
	```
### Running Tests

Tests in Parallel:
	```
	$ mvn test
	```

[Sauce Labs Dashboard](https://saucelabs.com/beta/dashboard/)

### Advice/Troubleshooting
1. It may be useful to use a Java IDE such as IntelliJ or Eclipse to help troubleshoot potential issues.
2. There may be additional latency when using a remote webdriver to run tests on Sauce Labs. Timeouts or Waits may need to be increased.
    * [Selenium tips regarding explicit waits](https://wiki.saucelabs.com/display/DOCS/Best+Practice%3A+Use+Explicit+Waits)

### Resources
##### [Sauce Labs Documentation](https://wiki.saucelabs.com/)

##### [SeleniumHQ Documentation](http://www.seleniumhq.org/docs/)

##### [TestNg Documentation](http://testng.org/javadocs/index.html)

##### [Java Documentation](https://docs.oracle.com/javase/7/docs/api/)

##### Stack Overflow:
* [Related Stack Overflow Threads](http://stackoverflow.com/questions/27355003/advise-on-hierarchy-for-element-locators-in-selenium-webdriver)
