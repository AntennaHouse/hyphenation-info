# hyphenation-info


Relax NG schema, Schematron, and Oxygen framework for AH Formatter hyphenation exception dictionary files.

The Relax NG handles structural validation and the
Schematron handles the additional constraints that cannot be
expressed in Relax NG.

## Disclaimer

**hyphenation-info** is a work in progress.

Pull requests and new issues are welcome.

## Installing

* If you want to keep up-to-date with **hyphenation-info** releases, then you can install **hyphenation-info** as an add-on Oxygen framework.
* If you want to use the current **hyphenation-info** version with an older Oxygen version, then you can install **hyphenation-info** as an add-on Oxygen framework.
* Alternatively, you can download a static copy of the Oxygen framework from GitHub.
* If you want to easily keep up-to-date with changes, then you can clone this repository and 'pull' the latest version whenever you want.
* If you want to hack on **hyphenation-info** or submit pull requests, then you can fork this repository and clone that onto your local machine.

### Installing as add-on Oxygen framework

Follow the instructions in the Oxygen manual at https://www.oxygenxml.com/doc/ug-editor/topics/installing-and-updating-add-ons.html

The **hyphenation-info** update site URL is https://raw.githubusercontent.com/AntennaHouse/hyphenation-info/master/add-on.xml

Note that Oxygen will require you to restart the editor after installing the add-on framework.

### Installing a ZIP archive to Oxygen `frameworks` directory

1. Download the ZIP archive from the latest release on the 'Releases' page.
1. Extract the folder in the ZIP archive to the Oxygen `frameworks` directory.
 - On Windows, this is `C:\Program Files\Oxygen XML Editor 24.0\frameworks`, or something similar.
 - If you don't have permission to copy the folder to the `frameworks` directory, then you can use an alternative location as described below.
1. Restart Oxygen.

### Installing a ZIP archive to an alternative frameworks location

If you don't have permission to modify the Oxygen installation – for example, if Oxygen is installed on Windows under `C:\Program Files\` and you are not an Administrator – you can set Oxygen to also use an alternative frameworks location.

1. Click on the "Download ZIP" button on this project's main page to download the files.
1. Extract the folder in the ZIP archive to a folder where you can create the new folder.
1. In your Oxygen preferences, add the **hyphenation-info** folder as an alternative frameworks location.
 - See https://www.oxygenxml.com/doc/ug-editor/topics/framework-location.html
1. Restart Oxygen.

### Installing a repository clone

1. Clone the repository into either the Oxygen `frameworks` directory or another directory.
2. If necessary, add the **hyphenation-info** folder as an alternative frameworks location.
3. Restart Oxygen.

## Using **hyphenation-info**

### oXygen XML Editor

When you open a hyphenation exception dictionary document – where the document element is `hyphenation-info` in no namespace – oXygen will automatically validate the document against both the Relax NG schema and the Schematron grammar.

**hyphenation-info** includes a CSS stylesheet for styling the files when viewed in Oxygen's Author mode.

## License/ライセンス


Copyright 1999-2022 Antenna House, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
