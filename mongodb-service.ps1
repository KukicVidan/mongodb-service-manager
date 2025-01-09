Function MongoDB {
    param (
        [string]$action
    )

    # MongoDB service name
    $serviceName = 'MongoDB'

    # Check MongoDB service status
    $status = Get-Service -Name $serviceName -ErrorAction SilentlyContinue

    if ($status) {
        # MongoDB service is found
        if ($status.Status -eq 'Running') {
            $statusMessage = "MongoDB Service Status: Running"
            $circleColor = 'Green'
        } else {
            $statusMessage = "MongoDB Service Status: Stopped"
            $circleColor = 'Red'
        }
    } else {
        Write-Host "MongoDB service not found."
        return
    }

    # Switch based on the action parameter
    switch ($action.ToLower()) {
        'start' {
            Start-Service -Name 'MongoDB'
            Write-Host 'MongoDB Service Started'
            $statusMessage = "MongoDB Service Status: Running"
            $circleColor = 'Green'
        }
        'stop' {
            Stop-Service -Name 'MongoDB'
            Write-Host 'MongoDB Service Stopped'
            $statusMessage = "MongoDB Service Status: Stopped"
            $circleColor = 'Red'
        }
        'restart' {
            Restart-Service -Name 'MongoDB'
            Write-Host 'MongoDB Service Restarted'
            $statusMessage = "MongoDB Service Status: Running"
            $circleColor = 'Green'
        }
        'status' {
            # Show MongoDB service status and additional info
            Write-Host "$statusMessage" -ForegroundColor $circleColor
            
            # Retrieve detailed process information only if 'mongod' is running
            $process = Get-Process -Name 'mongod' -ErrorAction SilentlyContinue
            if ($process) {
                $uptime = $process.StartTime
                $cpuUsage = $process.CPU
                $memoryUsage = $process.WorkingSet

                Write-Host "MongoDB Process Details:" -ForegroundColor 'Blue'
                Write-Host "  - Uptime: $($uptime)" -ForegroundColor 'Magenta'
                Write-Host "  - CPU Usage: $([math]::round($cpuUsage, 2))%" -ForegroundColor 'Magenta'
                Write-Host "  - Memory Usage: $([math]::round($memoryUsage / 1MB, 2)) MB" -ForegroundColor 'Magenta'
            } else {
                Write-Host "MongoDB process not found. Make sure it's running." -ForegroundColor 'Magenta'
            }
        }
        default {
            Write-Host "Invalid command. Please use one of the following: start, stop, restart, status." -ForegroundColor 'Red'
            return
        }
    }
}
