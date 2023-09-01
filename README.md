# Script PowerShell para Importar Usuários do Excel para o Active Directory
## Descrição
Este script PowerShell foi desenvolvido para automatizar o processo de importação de usuários a partir de um arquivo .xlsx para o Active Directory (AD). Ele também verifica se uma Organizational Unit (OU) especificada já existe e, se não existir, cria a OU antes de adicionar os usuários.

## Uso
1. Coloque o arquivo .xlsx com os dados dos usuários na mesma pasta onde o script PowerShell está localizado.
2. Execute primeiro o converte-planilha.ps1 defina os valores para os nome do arquivo .xlsx e o seu diretório.
3. Execute o AddUsers.ps1, ele ira adicionar os grupos e os usuários automaticamente.

# Notas
* Certifique-se de que o arquivo .xlsx esteja bem formatado e siga um modelo que corresponda às propriedades de usuário necessárias.
* É altamente recomendável testar o script em um ambiente de teste antes de usá-lo em produção para evitar problemas.
* Certifique-se de executar o script com as permissões adequadas no Active Directory para criar OUs e adicionar usuários.
* Este script é fornecido "como está" e sem garantia. Use-o por sua própria conta e risco.

# Autor
Lucas Perdigão de Oliveira
lucaspolivira@gmail.com
