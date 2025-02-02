# Pega o diretório atual onde o script está sendo executado
$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

# Define o arquivo de saída que conterá todos os comandos SQL combinados
$outputFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"

# Verifica se o arquivo de saída já existe; se existir, deleta o arquivo existente
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

# Obtém todos os arquivos SQL no diretório do script, ordenados por nome
$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter "*.sql" -File | Sort-Object Name

# Concatena o conteúdo de cada arquivo SQL no arquivo de saída
foreach ($file in $sqlFiles) {
    # Lê o conteúdo do arquivo SQL atual e adiciona ao arquivo de saída
    Get-Content $file.FullName | Out-File -Append -FilePath $outputFile
    
    # Adiciona a palavra "GO" no arquivo de saída para separar os scripts SQL
    "GO" | Out-File -Append -FilePath $outputFile
}

# Exibe uma mensagem informando que todos os arquivos foram combinados com sucesso
Write-Host "Todos os arquivos foram combinados em $outputFile"