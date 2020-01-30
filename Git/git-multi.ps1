param (

  # The root directory to perform the pull in
  # $baseDir = ".",
  $baseDir = "G:\Meu Drive\SOURCES",

  # How deep down you want to look for .git folders
  $depth = 4,

  # The command you want to perform
  $cmd = "pull"
)

function Go () {

  Write-Host "Searching for git folders in base dir: '$baseDir' ..." -foregroundColor "cyan"

  # Finds all .git folders by given path, the -match "h" parameter is for hidden folders
  $gitFolders = Get-ChildItem -Path $baseDir -Depth $depth -Recurse -Force | Where-Object { $_.FullName -like "*\.git" }

  ForEach ($gitFolder in $gitFolders) {

    # Remove the ".git" folder from the path
    $folder = $gitFolder.FullName -replace "\.git", ""

    Write-Host $folder

    Write-Host "Performing git $cmd in folder: '$folder'..." -foregroundColor "green"

    # Go into the folder
    Push-Location $folder

    # Perform the command within the folder
    & git $cmd

    # Go back to the original folder
    Pop-Location
  }
}

function Main () {
  Go
}

# Executes the main function
Main