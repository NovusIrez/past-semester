
fadzilah.othman@utem.edu.my

### YARA

- [My Repo](https://github.com/NovusIrez/Yara-APK-Demo)
- [YARA Docs](https://yara.readthedocs.io/en/latest/)
- [x]   [YarGen](https://github.com/Neo23x0/yarGen)
- [x] [Yet Another YARA Generator](https://github.com/jimmy-sonny/YaYaGen)
- [x] [Xen0ph0n YaraGenerator](https://github.com/Xen0ph0n/YaraGenerator)
- [YARA-CI](https://yara-ci.cloud.virustotal.com/)
- [x] [koodous.com find malware](https://blog.malwarebytes.com/security-world/technology/2017/09/explained-yara-rules/)
- [Awesome Yara (list of tools)](https://github.com/InQuest/awesome-yara)
- [x] [Koodous on YARA](https://docs.koodous.com/yara/getting-started/)
- https://github.com/Skotizo/VirusTotalBot
- [x] https://github.com/Koodous/androguard-yara
- [x] https://docs.koodous.com/
- https://github.com/Yara-Rules/yago
- https://github.com/VirusTotal/yara/issues/1145
- [Alternative to VirusTotal](https://www.maketecheasier.com/scan-apk-files-for-virus/)
- https://support.virustotal.com/hc/en-us/articles/360015658497-Crowdsourced-YARA-Rules
- [Example rule](https://koodous.com/rules/RDNZw1NqzodJlKmP/general)

##### YarGen

> python3 yarGen.py --help

Extract UNICODE

> strings -el sample.exe > output

Extract ASCII

> strings -a sample.exe > output

**links**

- [Best Practice Rule Creation](https://github.com/Neo23x0/yarGen#best-practice) ^7f4108
- [CommandLine Parameter](https://github.com/Neo23x0/yarGen#best-practice)
- [Post-process Yara Rule](https://cyb3rops.medium.com/how-to-post-process-yara-rules-generated-by-yargen-121d29322282)
- [Examples](https://github.com/Neo23x0/yarGen#examples)
<br>

**Running YARA first time**

>echo "rule dummy { condition: true }" > my_first_rule
>yara my_first_rule my_first_rule

*YARA Location*

> /mnt/d/YARA/yara/yara

**Note**
- Storing YARA Rule on github

### Flutter

- [Flutter doc](https://docs.flutter.dev/#new-to-flutter)
- [Expandable Floating action button](https://docs.flutter.dev/cookbook/effects/expandable-fab)
- [Scaffold class](https://api.flutter.dev/flutter/material/Scaffold-class.html)
- [File Picker](https://pub.dev/packages/file_picker)



**Note**
- RaisedButton
- upload icon
- Column
- [SizedBox](https://youtu.be/EHPu_DzRfqA)


Container

````dart
Container(
	 padding: EdgeInsets.all(30.0),
	 child: Text('click me'),
),
````

Row

````dart
 Row(
	 mainAxisAlignment: MainAxisAlignment.center,
	 children: <Widget>[
	 Text('hello, world'),
	 FlatButton(onPressed: (){},
	 child: Text('click me'),
	    ),
	  ],
	 ),
````

Empty space between

```dart
  Column(
  children:[
    MyButton(),
    SizedBox(height: 200),
    Otherbutton(),
    ],
  ),
```


```
mainAxisAlignment: MainAxisAlignment.
crossAxisAlignment: CrossAxisAlightment.
```


### API


>My API Key
56a524fdd1fcfde4168d1621c5861595e3e7c6806749c44f7d73d65ca69b6f11


 **VirusTotal**
- [API](https://support.virustotal.com/hc/en-us/articles/115002100149-API)
- [API Scripts and client libraries](https://support.virustotal.com/hc/en-us/articles/360006819798)
- [VirusTotal Yara Doc](https://support.virustotal.com/hc/en-us/articles/115002178945-YARA)
- [API Upload File](https://developers.virustotal.com/reference/files-scan)
- [VT Hunting and Live Hunt](https://support.virustotal.com/hc/en-us/articles/360000363717-What-s-VT-Hunting-)
- [Pokemon Go Scan](https://www.virustotal.com/gui/file/15db22fd7d961f4d4bd96052024d353b3ff4bd135835d2644d94d74c925af3c4/details)

Other method: Send APK and YARA to PC

**Sending File to Virus Total**
- https://github.com/flutterchina/dio

**Koodous**
- http://pavelsimecek.cz/custom-matching-of-koodous-yara-rules/




### Checklist

- **Yara**
- [x] how to use yarGen to scan apk (extract apk then scan files?)
- [x] what does Androguard-Yara dooo??
- [x] extract apk, use auto generate yara on dex file, use androguard-yara with yara
- [x] fix androguard fetch json report
- [ ] match apk file with community yara
- [ ] create yara from hybrid-analysis
- [x] https://www.researchgate.net/publication/354701299_YARA-Signator_Automated_Generation_of_Code-based_YARA_Rules
- [x] [Write Yara Rule part 1](https://www.nextron-systems.com/2015/02/16/write-simple-sound-yara-rules/)
- [x] string.xml on yaragen
- [ ] read Koodous docs, try upload apk
- [ ] [Koodous/androguard-yara: Module to use Androguard with Yara](https://github.com/Koodous/androguard-yara)
- **Flutter**
- [x] How to create new page
- [ ] how to create loading screen
- **Connection to PC**
- [ ] How to upload to PC
- [ ] how to run script on PC
- [ ] how to get result
- **Connection to VirusTotal**
- [x] How to upload to API
- [x] how to run scan
- [x] how to get result


### Sources
- https://api.flutter.dev/flutter/dart-io/HttpClient-class.html
- https://pub.dev/packages/requests
- send file with flutter https
- https://stackoverflow.com/questions/66339121/cant-post-from-flutter-web-with-httpclient
- https://developers.virustotal.com/reference/files-scan
- https://stackoverflow.com/questions/49125191/how-to-upload-images-and-file-to-a-server-in-flutter
- https://github.com/flutterchina/dio
- [Baca](https://github.com/miguelpruivo/flutter_file_picker/wiki/FAQ)
- https://stackoverflow.com/questions/67008450/want-to-fetch-bytes-of-selected-file-from-device
- get sha256 file
- [dart - Flutter : Dio HTTP Handling error exception 404 - Stack Overflow](https://stackoverflow.com/questions/57474139/flutter-dio-http-handling-error-exception-404)
- [Calculate SHA256 checksum in Dart - Stack Overflow](https://stackoverflow.com/questions/20787713/calculate-sha256-checksum-in-dart)
- JsonMap to array
- https://flutter.github.io/samples/jsonexample.html
- https://api.flutter.dev/flutter/widgets/Table-class.html
- https://docs.koodous.com/quotas.html

>Use malware that was once in the wild  
>  
[https://github.com/ashishb/android-malware](https://github.com/ashishb/android-malware)  
  >
[https://github.com/sk3ptre](https://github.com/sk3ptre)  
  >
[https://github.com/quark-engine/quark-engine](https://github.com/quark-engine/quark-engine)
>
>[Android Malware 2021](https://github.com/sk3ptre/AndroidMalware_2021)

<br>

### Malware to Show
- https://github.com/sk3ptre
- https://support.virustotal.com/hc/en-us/articles/360015658497-Crowdsourced-Yara-Rules
- Contained in Collection
- Detection Type

>- [Anubis Dropper with motion detection capability](https://www.virustotal.com/gui/file/64ebe9b975de022b888f17db429af3a93d3db95db5af274e3eefd3ca7f24e350/detection)
64ebe9b975de022b888f17db429af3a93d3db95db5af274e3eefd3ca7f24e350

>- [Exodus](https://www.virustotal.com/gui/file/0f5f1409b1ebbee4aa837d20479732e11399d37f05b47b5359dc53a4001314e5/detection)
0f5f1409b1ebbee4aa837d20479732e11399d37f05b47b5359dc53a4001314e5

- [Masquerading malware](https://www.virustotal.com/gui/file/03122ade6371753933299d563bf26bcce3e54c1b467465bbf7a49dc9a6c13777)
- [FluBot](https://www.virustotal.com/gui/file/30937927e8891f8c0fd2c7b6be5fbc5a05011c34a7375e91aad384b82b9e6a67)
- [August banking Trojan](https://www.virustotal.com/gui/file/fe2e8b115b3ffc2f3ab668c08c67b21afa6761426cef1c6a99f6cb9074d8076f/detection)

>For testing
>- [download AT&T Security Services 1.0.5](https://www.apkmirror.com/apk/att-services-inc/att-security-services/att-security-services-1-0-5-release/att-security-services-1-0-5-android-apk-download/download/)


[Get file report API](https://developers.virustotal.com/reference/file-info)

<br>

### Issue

- APK file is an archive file, creating a YARA based on multiple parts in APK file (manifest , permissions, dex file, etc) is not optimal/feaseable
- Because there are no open sourced developed tool to decompile apk, and then scan different files with yara
- There is no Yara generator for dex file, analysts just write their own Yara for dex file
- Relying on Koodous API to convert APK into json report requires internet connection (the source code is not opensource)
	- Json report can be used to extract manifest file into json report for Yara detection
- Koodous, biggest Yara static analysis site for apk has put a usage limits on analysis and subscription plans

#### Known Issue with App
- Sometimes app without matching Yara rule will display error message

<br>

### Presentation Notes

Objective
- To develop a mobile app that generates Yara rule

Reasoning
- Writing YARA rules manually requires a highly specialized set of skill, automatic tool can help generate Yara with ease

Original plan/scope
- To generate Yara rules on mobile apk files and post-process the rules

Yara in Malware Analysis
- Discovers malware based on string-matching technique 
- Create description of malware families based on textual or binary patterns

Current issue
- Few open-source Yara tools being worked on and kept maintained
