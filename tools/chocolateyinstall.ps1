
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://az764295.vo.msecnd.net/insider/709bf352b12de8284683bef94cb5984129bfc776/VSCodeSetup-ia32-1.32.0-insider.exe'
$url64      = 'https://az764295.vo.msecnd.net/insider/709bf352b12de8284683bef94cb5984129bfc776/VSCodeSetup-x64-1.32.0-insider.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'VSCode-Insiders*'

  checksum      = '270903708B1DB908EAA8E32563585810A5FD3E1FFAA131C398086319E0E46ABD'
  checksumType  = 'sha256'
  checksum64    = 'B3224CC23AF21D6A29A1549B6AD15C7787211D22B05682561014A411920CEF81'
  checksumType64= 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs










    








