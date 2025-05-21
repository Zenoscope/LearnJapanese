
#
# Gamemaker build file for learning Japanese
#

# gamemaker compiler locations
$runtime_version = "runtime-2024.11.0.226"
$OS="windows"
$arch = "x64"
$runtimes_path = "C:\ProgramData\GameMakerStudio2\Cache\runtimes\"
$igor_path = "$runtimes_path\$runtime_version\bin\igor\$OS\$arch\"
$runtime_dir = "$runtimes_path\$runtime_version\"
$runtime_path = $runtime_dir

# cache etc settings
$user_folder = "C:\Users\ryan\AppData\Roaming\GameMakerStudio2\zenoscope_3802076\"
$cache_dir_path = "C:\Users\ryan\AppData\Roaming\GameMakerStudio2\Cache\"
$temp_dir_path = "C:\Users\ryan\AppData\Local\GameMakerStudio2\"
$licence_plist_file = "$user_folder\licence.plist"
$GMtemp_folder = "C:\Users\ryan\AppData\Local\GameMakerStudio2\GMS2TEMP\"
$GMCache_folder = "C:\Users\ryan\AppData\Roaming\GameMakerStudio2\Cache\GMS2CACHE\LearnJapanese\"

# user path information
# maybe use this automatic
$options_file = "C:\Users\ryan\Downloads\LearnJapanese\"
$project_root = "C:\Users\ryan\Downloads\LearnJapanese\"

# project information
$project_file = "LearnJapanese.yyp"
$release_number = "3"
$output_filename = "LearnJapanese_Release_$release_number"
$target_file = $output_filename

$project_YYP_file = "$project_root\LearnJapanese_v_4\$project_file"


# Test if the temp folder exists, if not create it
if (Test-Path -Path "$GMtemp_folder") {
    write-host "Path exists $GMtemp_folder"
} else {
    New-Item -ItemType Directory -Path $GMtemp_folder
}

if (Test-Path -Path "$GMCache_folder") {
    write-host "Path exists: $GMCache_folder"
} else {
	write-host "Copying files to $GMCache_folder"
    Copy-Item -Path "C:\Users\ryan\Downloads\LearnJapanese\AutoBuildFiles\LearnJapanese\" -Destination "$GMCache_folder" -Recurse
}

#
# Run the game 
#
write-host "####`n ### Running the game`n ###"
# works!
# & "$igor_path\Igor.exe"  -j=8  -options="$project_root\build.bff" -v -- Windows Run

# run the UI tests here. Auto-it or something else?

#
# Windows
#
#clean the build
write-host "####`n### Cleaning Windows build`n###"
write-host $igor_path\Igor.exe --uf="C:\Users\ryan\AppData\Roaming\GameMakerStudio2\zenoscope_3802076" --rp=$runtime_path --project=$project_YYP_file --cache=$cache_dir_path --temp=$temp_dir_path -- Windows Clean
& $igor_path\Igor.exe --uf="C:\Users\ryan\AppData\Roaming\GameMakerStudio2\zenoscope_3802076" --rp=$runtime_path --project=$project_YYP_file --cache=$cache_dir_path --temp=$temp_dir_path -- Windows Clean

# create an installer 
write-host "####`n### Creating an installer`n###"
#write-host $igor_path\Igor.exe --uf=$user_folder --rp=$runtime_path --project=$project_YYP_file --cache=$cache_dir_path --temp=$temp_dir_path --options=$options_file\build.bff  --of=$options_file$output_filename -v -- Windows PackageNsis
#write-host ""
& $igor_path\Igor.exe --uf=$user_folder --rp=$runtime_path --project=$project_YYP_file --cache=$cache_dir_path --temp=$temp_dir_path --options=$options_file\build.bff --tf=$options_file$target_file --of=$options_file$output_filename -- Windows Run
# 
# zip
# & $igor_path\Igor.exe /uf=[user_folder] /rp=[runtime_path] /project=[project_YYP_file] /cache=[cache_dir_path] /temp=[temp_dir_path] /of=[output_filename] /tf=[target_file] -- Windows PackageZip

# clean HTML5
# & $igor_path\Igor.exe /uf=[user_folder] /rp=[runtime_path] /project=[project_YYP_file] /cache=[cache_dir_path] /temp=[temp_dir_path] -- HTML5 Clean
# build file
# & $igor_path\Igor.exe /uf=[user_folder] /rp=[runtime_path] /project=[project_YYP_file] /cache=[cache_dir_path] /temp=[temp_dir_path] /of=[output_filename] /tf=[target_folder] -- HTML5 folder

#
# Linux
#
# clean
# & $igor_path\Igor.exe /uf=[user_folder] /rp=[runtime_path] /project=[project_YYP_file] /cache=[cache_dir_path] /temp=[temp_dir_path] -- Linux Clean
# Build (on Windows)
# & $igor_path\Igor.exe /uf=[user_folder] /rp=[runtime_path] /project=[project_YYP_file] /cache=[cache_dir_path] /temp=[temp_dir_path] /of=[output_filename] /tf=[target_file] /device=[device_IDE_Name] -- Linux Package

#
# macOS
#
# Clean
# & $igor_path\Igor.exe /uf=[user_folder] /rp=[runtime_path] /project=[project_YYP_file] /cache=[cache_dir_path] /temp=[temp_dir_path] -- Mac Clean
# build
# & $igor_path\Igor.exe /uf=[user_folder] /rp=[runtime_path] /project=[project_YYP_file] /cache=[cache_dir_path] /temp=[temp_dir_path] /of=[output_filename] /tf=[target_file] /device=[device_IDE_Name] -- Mac PackageZip