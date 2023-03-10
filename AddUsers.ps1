$ErrorActionPreference = "Stop"

$oi = Import-Csv '$dir\$arquivo.csv -Delimiter' ',' -PipelineVariable User
ForEach ($l in $oi) {

$grupos = $l.'Group Member' -split ";"

$grupos1 = $grupos[0]
$grupos2 = $grupos[1]

if ($grupos1 -eq $null){
    New-ADGroup -Name "$grupos1" -GroupScope Global  -Path "CN=Users,DC=lucaspolivira,DC=com"
}
if ($grupos2 -ne $null){
$grupos3 = $grupos2
if ($grupos3 -eq $null){
    New-ADGroup -Name "$grupos3" -GroupScope Global  -Path "CN=Users,DC=lucaspolivira,DC=com"
}}

$securePassword = ConvertTo-SecureString -String $l.password -AsPlainText -Force
$NewAdUserParameters = @{
    Name = $l.'User logon name'
    GivenName = $l.'First Name'
    Surname = $l.'Last Name'
    Department = $l.Department
    Title = $l.'Job Title'
    Homephone = $l.'Telephone Number'
    Street = $l.Street
    City = $l.City
    Country = "Br"
    logon = $l.'User logon name'
    accountpassword = $securePassword

}


new-AdUser @NewAdUserParameters
Add-AdGroupMember -Identity $grupos[0] -Members $l.'User logon name'
if ($grupos[1] -ne $null){
Add-AdGroupMember -Identity $grupos[1] -Members $l.'User logon name'
}
}