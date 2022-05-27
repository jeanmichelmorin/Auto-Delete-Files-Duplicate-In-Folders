# Helpful links:
# https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-arrays?view=powershell-7.2
# https://superuser.com/a/1093799
# https://stackoverflow.com/a/24315319

# DON'T FORGET TO ADD A "\" AT THE END OF THE FILE PATH.
# EXAMPLE: 'C:\Temp\'
# You can add as many paths as you want, in both arrays.

# Folders to remove cross-folder duplicates from
$pathsToRemoveFilesFrom = @(
    'C:\Temp\Test1\'
    'C:\Temp\Test2\'
)

# Folders to keep the last remaining copies in
$pathsToKeepTheFilesFrom = @(
    'C:\ImportantFiles1\'
    'C:\ImportantFiles2\'
    'C:\ImportantFiles3\'
    'C:\ImportantFiles4\'
)


foreach($pathKeep in $pathsToKeepTheFilesFrom) {
    Get-ChildItem $pathKeep -recurse | ForEach-Object {
        foreach($pathDelete in $pathsToRemoveFilesFrom){
            $fullPath = $pathDelete + $_.Name
            If (Test-Path $fullPath) {Remove-Item $fullPath}
        }
    }
}
