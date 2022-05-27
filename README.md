# Auto-Delete-Files-Duplicate-In-Folders
Powershell script which compares file names between 2 folders (or more), then delete it if already present.

This is essentially a better approach to [Ben N's answer](https://superuser.com/a/1093799) which only allowed 1 folder to compare and delete.

# /!\ WARNING /!\ 
If you have to use this on important file, I recommend doing a backup, then a few tests using non-important txt files beforehand to make sure you understand how it works. <b>Deleted files won't be recoverable</b>.

Also, my script goes into <b>subfolders</b> to find a duplicate file to delete. This may be important to consider. If you don't want that, just remove:

`-recurse`

# Usage example:

[Google Takeout](https://takeout.google.com/) allows you, for example, to export all of the photos from your Google Photos. It will make a `.zip` containing folders with photos classified by year (2018, 2019, 2020, etc...), but will also make folders of the photos in your albums (if you decide to export the albums as well).

The problem, is that Google duplicates, for example, your photo from 2018 and the photo of your album. So if the photo is 2MB, because it's also in the album and the year folder, it ends up taking 4MB of space in total on your drive.

However, I want to keep the photos from the albums, but only in the albums, and not in the year folder.

This is where my powershell scripts comes handy.

# How to make it work

## 1: Adapt the paths to your need
Adapt the files so it matches your paths and files you want to remove if duplicate.

## 2: Execute it (2 methods)

### Option 1: Start it manually.
<li>Open <b>Powershell ISE</b> as Administrator.</li>
<li>At the top right of the blue window, there should be a label "Script" with an arrow. Click the arrow.</li>
<li>Copy paste the code into the script editor (white zone).</li>


### Option 2: Run it from the script.
Save it as a .ps1 file, e.g. dedupe.ps1. Before you can run PowerShell scripts, you'll need to enable their execution:

`Set-ExecutionPolicy Unrestricted -Scope CurrentUser`

Then you'll be able to invoke it with .\dedupe.ps1 when you're in the folder that contains it.
