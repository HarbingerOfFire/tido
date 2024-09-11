# TIDO
Like SUDO, but instead it gives you TrustedInstaller Access to your Windows System.

It works by getting Starting the TrustedInstaller Application, getting the Security Identifier (SID), and using it to impersonate the running of commands as TrustedInstaller.

## USE
To use open an admin terminal (WIN11) or Command Prompt (WIN10) and navigate to the directory containing tido.bat. Call tido and your script. TIDO takes a powershell script as it's input like the following:
```
tido Remove-Item -Path "C:\Windows\System32\Bubbles.scr"
```

## SOURCES 
<br>-[John Hammond](https://youtu.be/Vj1uh89v-Sc?si=JcC8BQeUXD7k1BjV) <br>
-[James Forshaw](https://www.tiraniddo.dev/2017/08/the-art-of-becoming-trustedinstaller.html)
