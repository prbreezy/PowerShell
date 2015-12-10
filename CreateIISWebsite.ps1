#Parameters
param([String]$PublicURL,
      [int]$WebsitePort
    )
#Variables
Import-Module WebAdministration
$iisAppPoolName = "MyAppPool"
$iisAppName = "MyWebsite"
$WebPath = "c:\inetpub\website"
$Password = "MyPass"
$UserName = "MyUser"
$MyVirtualDirectory = "MyVirtualDirectory"
#Create website with the URL
New-Item iis:\Sites\$iisAppName -bindings @{protocol="http";bindingInformation=":$WebsitePort:$PublicURL"} -physicalPath $WebPath -id 2
#Create AppPools
New-Item IIS:\AppPools\$iisAppPoolName
Set-ItemProperty IIS:\Sites\$iisAppName -name applicationPool -Value $iisAppPoolName
#Create virtual directory
New-Item IIS:\Sites\$iisAppName\$MyVirtualDirectory -physicalPath c:\inetpub\img -type VirtualDirectory
Set-ItemProperty IIS:\Sites\$iisAppName\$MyVirtualDirectory -Name username -Value $UserName
Set-ItemProperty IIS:\Sites\$iisAppName\$MyVirtualDirectory -Name password -Value $Password
