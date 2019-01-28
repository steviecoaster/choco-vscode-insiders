
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://go.microsoft.com/fwlink/?LinkId=723965'
$url64      = 'https://go.microsoft.com/fwlink/?Linkid=852155'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'VSCode-Insiders*'

  checksum      = '8D35F52EC52437CDFCCC9C35BD64F982602AC3D5513B81D4BDB977C59F81EE6A'
  checksumType  = 'sha256'
  checksum64    = '840A231383E0C00305DB95379FD678FEF3798B13B736340770DE8FFA03B70940'
  checksumType64= 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs










    








