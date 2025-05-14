# flutter_application_1
1) create a folder in the /workspace => mkdir -p flutter_application_1
2) cntrl+shift+X(Vscode extensions) => install flutter [with Dart]
3) cntrl+shift+P(command Palatte) => flutter : New Project
4) click Download SDK 
5) select /workspace as a working folder to clone SDK
6) New folder "flutter" gets created in /workspace/flutter
7) create folder ".devcontainer" in /workspace/flutter_application_1/
8) create 2 files devcontainer.json and setup-android.sh in /workspace/flutter_application_1/.devcontainer
9) change permissions by running chmod +x devcontainer.json and chmod +x setup-android.sh
10 Press F1(command Palatte) => codespaces : Rebuild => full rebuild
11)check in terminal >flutter --version >which sdkmanager >sdkmanager --list
12)Go to flutter_application_1 and run "flutter create ." it creates flutter folder structure 
13)The application file is located in /workspace/flutter_application_1/lib/main.dart
GITHUB : All these code is now published from codespace to github

Scenario :2 
when we use github repository through code=>codespace
We get the flutter_application_1 in the codespace vscode
if it repeatedly prompts to download sdk(flutter),check in terminal for /workspace/flutter
if it is not found then go to cntrl+shift+P and type flutter:NewProject 
and select /workspace to clone flutter

for running the applicaiton
> flutter devices 

if only linux destop is available then run

>flutter config --enable-web
>flutter run -d web-server ## without -d it doesnt work
Launching lib/main.dart on Web Server in debug mode...
Waiting for connection from debug service on Web Server...         19.9s
lib/main.dart is being served at http://localhost:38351
The web-server device requires the Dart Debug Chrome extension for debugging. Consider using the
Chrome or Edge devices for an improved development workflow.

in the same row of the TERMINAL page we find PORTS
select PORTS and look for :38351 port and click the globe icon in it.
It will take to a webpage where we see "Hello World"