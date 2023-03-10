$File = Read-Host "Nome do arquivo"
$Dir = Read-Host "Diretorio do arquivo"

$planilha = New-Object -ComObject Excel.Application

$wb = $excel.Workbooks.Open("dir\$file.xlsx")

foreach ($ws in $wb.Worksheets){
    $ws.SaveAs("$dir\$file.csv", 6)
}

$planilha.Quit()