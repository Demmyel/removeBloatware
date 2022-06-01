# Remove Microsoft bloatware
"*3dbuilder*", "*Microsoft.549981C3F5F10*", "*disney*", "*onedrive*", "*3dviewer*", "*bingfinance*", "*bingnews*", "*bingsports*", "*bingweather*", "*bubblewitch*", `
"*CandyCrush*", "*feedback*", "*getstarted*", "*gethelp*", "*MixedReality*", "*mspaint*", "*Print3D*", `
"*skypeapp*", "*solitairecollection*", "*soundrecorder*", "*StickyNotes*", "*todos*", "*windowsalarms*", `
"*windowscamera*", "*windowscommunicationsapps*", "*windowsmaps*", "*windowsstore*", "*windowsphone*", `
"*xbox*", "*xboxapp*", "*xing*", "*YourPhone*", "*zunemusic*", "*zunevideo*",`
"*hpjumpstart*", "*hppc*", "*hpsys*", "*hppower*", "*HPPrivacySettings*" | %{
    Get-AppxPackage -AllUsers $_ | Remove-AppxPackage
}

# Uninstall all HP packages and apps
Get-Package -Name "*hp*" | %{Uninstall-Package -Name $_.Name}
Get-AppxPackage "*HP*"| %{echo $_.Name}
Get-AppxPackage -Name "*hp*" | %{Remove-AppxPackage $_}
Get-Package -Name "*hp*" | %{echo $_.Name}