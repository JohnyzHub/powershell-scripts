function Get-DockerContainerInfo {
    $results = @()
    # Get all running container IDs
    $containerIds = docker ps -q

    foreach ($containerId in $containerIds) {
        # Fetch container details
        $name = docker inspect -f '{{.Name}}' $containerId

        # Check if the name is not empty and remove leading slash if present
        if ($name) {
            $name = $name -replace '^/', ''
        } else {
            $name = "N/A"  # Assign "N/A" if name is empty
        }

        $image = docker inspect -f '{{.Image}}' $containerId

        # Get only the first 10 characters of the Image ID
        $shortImageId = $image.Substring(0, 20)

        $ipAddress = docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $containerId

        # Create a custom object for each container
        $containerInfo = [PSCustomObject]@{
            ContainerName = $name
            IPAddress     = $ipAddress
            ContainerID   = $containerId
            ImageID       = $shortImageId   # Use the short Image ID
        }

        # Add to results
        $results += $containerInfo
    }

    return $results
}

# Call the function to display the container information
Get-DockerContainerInfo | Format-Table -AutoSize
