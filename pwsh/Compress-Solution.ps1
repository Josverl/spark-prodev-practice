param(
  $Name,
  $ZipFile = "$(& $PSScriptRoot/lib/Get-ArtifactStagingPath.ps1)/$Name.zip",
  $Folder = "solutions/$Name/src",
  $MapPath = "solutions/$Name/map.xml",
  $PackageType = "Both"
)

& $PSScriptRoot/lib/Install-Pac.ps1

pac solution pack `
  --zipfile $ZipFile `
  --folder $Folder `
  --packagetype $PackageType `
  --map $MapPath
