function run {
    param(
        [string]$arg1,
        [string]$arg2,
        [string]$arg3
    )

    if ($arg1 -eq "Sonar" -and $arg2 -eq "BLE" -and $arg3 -eq "Radar") {
        Write-Host "Starting up Sonar BLE Radar 4.5..."
	Write-Host "Starting up..."
	Write-Host "loading..."

        python "C:\Users\YourPath\BLE-Sonar-Radar\BLE-Sonar-Radar.py"
    }
}
