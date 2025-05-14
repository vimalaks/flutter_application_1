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