# Auto-Delete-Files-Duplicate-In-Folders
Powershell script which compares file names between 2 folders (or more), then delete it if already present.

This is essentially a better approach to [Ben N's answer](https://superuser.com/a/1093799) which only allowed 1 folder to compare and delete.

# /!\ WARNING /!\ 
If you have to use this on important files, I recommend doing a backup, then a few tests using non-important txt files beforehand to make sure you understand how it works. Deleted files won't be recoverable.

# How to make it work

## 1: Adapt the files so it matches your paths and files you want to remove if duplicate.

## 2: Execute it (2 methods)

### Option 1: Start it manually.
<li>Open <b>Powershell ISE</b> as Administrator.</li>
<li>At the top right of the blue window, there should be a label "Script" with an arrow. Click the arrow.</li>
<li>Copy paste the code into the script editor (white zone).</li>


### Option 2: Run it from the script.
Save it as a .ps1 file, e.g. dedupe.ps1. Before you can run PowerShell scripts, you'll need to enable their execution:
`Set-ExecutionPolicy Unrestricted -Scope CurrentUser`

Then you'll be able to invoke it with .\dedupe.ps1 when you're in the folder that contains it.
