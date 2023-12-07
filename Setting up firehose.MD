Lab https://firebase.google.com/codelabs/firebase-web#0

Instructions are missing important parts :\

# Preconditions:

The IDE/text editor of your choice, such as WebStorm, Atom, Sublime, or VS Code
The package manager npm, which typically comes with Node.js
A terminal/console
A browser of your choice, such as Chrome
The codelab's sample code (See the next step of the codelab for how to get the code.)

Firebase CLI
`npm install firebase`

Emulation: https://firebase.google.com/docs/emulator-suite/install_and_configure
Node.js 16+
Java! JDK 11+ for emulation https://jdk.java.net/21/

`firebase use --add`
`firebase init emulators` - it will download needed jre :\

I couldn't run this in my bash, doesn't see java even though it's added to path.

Running in powershell, but note - need to run like `npx firebase bla-bla-bla`

## All commands list that I run before emulators finally started working
```shell
   1 cd .\Projects\codelab-friendlychat-web\angularfire-start\
   4 npm install -g @angular/cli
   6 npx firebase emulators:start
   8 npx  firebase experiments:enable webframeworks
  10 npx firebase emulators:start
  12 npx ng add @angular/fire
  13 npx firebase emulators:start
  14 npx ng build
  17 npx firebase emulators:start
  18 npx firebase init
  20 npx firebase init emulators
  21 npx firebase use --add
  22 npx firebase init emulators
  23 npx firebase emulators:start
  24 npx firebase deploy
  25 npx firebase init
  26 npx firebase emulators:start
```

## Deploy

```firebase deploy --only hosting```

This is for hosting (frontend only) deploy

# Useful links
https://firebase.google.com/docs/projects/learn-more - intro, need to read

https://firebase.google.com/docs/reference/js - api reference

https://firebase.google.com/docs/cli#windows-npm - commands

https://firebase.google.com/support/guides/security-checklist, https://firebase.google.com/docs/projects/dev-workflows/general-security-guidelines - secutiry, need to read

https://firebase.google.com/support/guides/launch-checklist - launch check list, need to add before launching

https://firebase.google.com/docs/projects/dev-workflows/general-best-practices - best practises, need to read

https://firebase.google.com/docs/projects/dev-workflows/overview-environments - envs guidelines, need to read

