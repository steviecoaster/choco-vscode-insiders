
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://update.code.visualstudio.com/latest/win32/insider'
$url64      = 'https://update.code.visualstudio.com/latest/win32-x64/insider'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'VSCode-Insiders*'

  checksum      = '6FCC29241D33DD00EC14EA5552523819012110117CD3DD46F66C09ACA72AD86C'
  checksumType  = 'sha256'
  checksum64    = '15B7A714A0A6D14573B7E424668A5494763BAA4482DC37F547DA2B67E5766EF3'
  checksumType64= 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs










    








