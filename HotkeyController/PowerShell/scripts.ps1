#Get-NetAdapter
#Get-NetAdapter -Name Wi-Fi | ? status -ne disabled | Disable-NetAdapter -Confirm:$false
#Get-NetAdapter -Name Wi-Fi | ? status -eq disabled | Enable-NetAdapter -Confirm:$false


$wifi = Get-NetAdapter -Name Wi-Fi
$lan = Get-NetAdapter -Name "Ethernet 4"

if($wifi.status -eq 'disabled') {
    $wifi | Enable-NetAdapter -Confirm:$false
    $lan | Disable-NetAdapter -Confirm:$false
} ELSE {
    $lan | Enable-NetAdapter -Confirm:$false
    $wifi | Disable-NetAdapter -Confirm:$false
}