* [English](#en)
* [日本語](#ja)

----
# <a name="en"></a>hyphenation-info


Relax NG schema, Schematron, and Oxygen framework for Antenna House Formatter hyphenation exception dictionary files (https://www.antenna.co.jp/AHF/help/en/ahf-hyp.html#ExceptionDic).

The Relax NG handles structural validation and the
Schematron handles the additional constraints that cannot be
expressed in Relax NG.

**hyphenation-info** version numbers correspond to the Antenna House Formatter version current at the time of the release.

## Disclaimer

**hyphenation-info** is a work in progress.

Pull requests and new issues are welcome.

## Installing

* If you want to keep up-to-date with **hyphenation-info** releases, then you can install **hyphenation-info** as an add-on Oxygen framework.
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

## License

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

----

# <a name="ja"></a>hyphenation-info


Relax NG schema、 Schematron、 Oxygen フレームワークの Antenna House Formatter ハイフネーション例外辞書ファイル（https://www.antenna.co.jp/AHF/help/ja/ahf-hyp.html#ExceptionDic）。

Relax NG は、構造の有効を扱い、Schematron のは Relax NG では表現できない追加の制約を扱います。

**hyphenation-info** 版の番号は、リリース時の Antenna House Formatter 版に対応しています。

## 免責事項

**hyphenation-info** の開発は進行中です。

Pullリクエストや問題がありましたらお知らせください

## インストール

* 最初の **hyphenation-info** リリースを続けたい場合、oXygen のアドオンフレームワークとして **hyphenation-info** をインストールすることができます。
代わりに、GitHubから oXygen フレームワークの静的なコピーをダウンロードすることができます。
* 最新の変更を続けたい場合、このリポジトリをクローンして、いつでも好きな時に最新版を pull することができます。
* **hyphenation-info** をハックしたり pull リクエストをサブミットしたり場合は、このリポジトリをフォークして、ローカルマシンにクローンすることができます。
###　アドオン oXygen フレームワークとしてのインストール

 https://www.oxygenxml.com/doc/ug-editor/topics/installing-and-updating-add-ons.htmlの oXygen のマニュアルの指示に従ってください。

 **hyphenation-info** の最新サイトの URL は https://raw.githubusercontent.com/AntennaHouse/hyphenation-info/master/add-on.xml
です。

oXygen はアドオンフレームワークをインストールした後、エデイタの再起動する必要になります。

### oXygen frameworks ディレクトリの ZIP アーカイブにインストールする

1. Releases ページにある最新リリースから ZIP アーカイブをダウンロードして下さい。
1. oXygen frameworks ディレクトリに ZIP アーカイブにあるフォルダーを解凍します。
 - Windowsでは、これは `C:\Program Files\Oxygen XML Editor 24.0\frameworks`か同様のものです。
 - `frameworks` ディレクトリにフォルダをコピーする許可がない場合は、以下に説明するように、別の場所を使用することができます。
1. oXygen を再起動します。

### 代替 フレームワークスの場所に ZIP アーカイブのインストール

インストールを変更する許可がない場合は、例えば、oXygen は　 C:\Program Files\ で Windows にインストール場合、あなたは管理者でない場合、代替フレームワークの場所も使用するように oXygen を設定することができます。 

1.ファイルをダウンロードするには、このプロジェクトのメインページの "Download ZIP" をクリックします。

1. 新しいフォルダを作成することができるフォルダに ZIP アーカイブ内のフォルダを解凍します。
1. oXygen の環境設定で、代替フレームワークスの場所として解凍した **hyphenation-info** フォルダを追加します。
 -  https://www.oxygenxml.com/doc/ug-editor/topics/framework-location.html
 を参照して下さい。
1. oXygen を再起動します。

### リポジトリクローンをインストールする

1. oXygen の `frameworks` ディレクトリ又は別のディレクトリのどちらかにリポジトリをクローンします。
2. 必要ならば、別のフレームワークスの場所として **hyphenation-info** フォルダを追加します。
3. oXygen を再起動します。

##  **hyphenation-info**の使用

### oXygen XML エディタ
文書要素が名前空間なしで`hyphenation-info`であるハイフネーション例外辞書文書を開くと、oXygen は自動的にその文書をRelax NG スキーマと Schematron 文法の両方に対して文書を確認します。

**hyphenation-info** には、oXygenの作成者（Author）モードでファイルを表示する際にスタイルを設定するためのCSSスタイルシートが含まれています。

## ライセンス


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
