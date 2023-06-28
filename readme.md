<p align="center">
   <a href='https://github.com/jonasaacampos'>
      <img alt="" src="https://img.shields.io/static/v1?color=blue&label=dynamics365&message=dynamics 365&style=for-the-badge&logo=dynamics365"/>
      </a>
      <img alt="" src="https://img.shields.io/static/v1?color=blue&label=office&message=office 365&style=for-the-badge&logo=microsoftoffice"/>
      </a>
      <img alt="" src="https://img.shields.io/static/v1?color=blue&label=microsoft&message=Windows&style=for-the-badge&logo=microsoft"/>
      </a>
      
</p>

<h1>Nome Empresa</h1>

> Desc Projeto

<img alt="BC_logo" src="img\Dynamics-365-BC-logo-removebg.png?raw=true" width=150 align=right>

[![](https://img.shields.io/badge/feito%20com%20%E2%9D%A4%20por-jaac-cyan)](https://github.com/jonasaacampos)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-Profile-informational?style=flat&logo=linkedin&logoColor=white&color=0D76A8)](https://www.linkedin.com/in/jonasaacampos)

![](https://img.shields.io/badge/dynamics365-informational?style=flat&logo=dynamics365&logoColor=white&color=gold)
![](https://img.shields.io/badge/vscode-informational?style=flat&logo=visualstudiocode&logoColor=white&color=magenta)


----
<h2>Índice</h2>

- [Demo](#demo)
- [Iniciar Projeto](#iniciar-projeto)
- [Documentação (descritivo) do projeto](#documentação-descritivo-do-projeto)
- [Utilidades e Referências](#utilidades-e-referências)
- [Contato](#contato)


## Demo 

![Alt text](img/01_filmes_series_01.png)

## Iniciar Projeto

 - [ ] Abra a paleta de comandos (`ctrl + shift + p`)
 - [ ] Digite `AL:Go!`
 - [ ] Insira o caminho do diretório (e crie um diretório vazio para o projeto)
 - [ ] Escolha a opção do servidor. No meu caso escolhi `Your own server`
 - [ ] Na opção de login, ignore esta etapa, apertando `esc`
 - [ ] Abra o arquivo `.vscode > launch.json` e edite os parâmetros:
   - [ ] `server` alterar para `http://NOME_OU_IP_SEU_SERVIDOR`
   - [ ] `serverInstance` insira o nome da sua máquina virtual no lugar do padão `BC130`
   - [ ] `name` o nome do seu servidor. Pode ser qualquer coisa
   - [ ] ` "startupObjectId"` insira o objeto que iniciará por padrão após a compilação.
 - [ ] Após publicar o projeto pela primeira vez, insira o parâmetro `"schemaUpdateMode": "Recreate",`
 - [ ] Apague o arquivo `HelloWord.al` e inicie o desenvolvimento
 - [ ] Abra a paleta de comandos (`ctrl + shift + p`)
 - [ ] Digite `AL: Download Symbols`
 - [ ] Aparecerão os módulos baixados do diretório `.alpackages` na seção explorer do projeto
 - [ ] Compile o projeto, `F5` para depuração ou `ctrl + F5` para publicação direta

## Documentação (descritivo) do projeto

> Aqui vou descrever a finalidade de adicionar cada componente, bem como o papel de cada um dentro do projeto. Cada descritivo segue uma indicação de qual versão foi implementada e versionada

<details>
  <summary><b>👓 1 - Tabelas e Páginas</b> (<a href='https://github.com/jonasaacampos/Dynamics365_BC_TelevisionShows/commit/926bd9d3f62b9dd4434f8b3bd6f65713648c9264' target='_blank'>initial commit</a>)</summary>

  Ao criar uma **tabela**, definimos quais dados desejamos capturar na aplicação. As propriedades de cada campo são definidos na tabela.

  Para que sejam exibido os dados, precisamos de criar **páginas**. Estas permitem que o usuário interaja com nosso aplicativo. Uma **página de lista** é a primeira página que o usuário acessará. A partir desta lista, é possível inserir, alterar e excluir dados. Quando informações mais detalhadas são necessárias, o usuário pode acessar a **página de cartão**.

  </details>

<details>
  <summary><b>⛔ 2 - Validação de campos e tratamento de erros</b> </summary>

  Gatilhos (triggers) são funções que acontessem como resultado de uma ação. Estes podem ser ignorados a depender da regra de negócios. No nosso caso, o gatilho sempre será disparado para validar o campo data da última exibição.

  Cada objeto AL possui um conjunto de gatilhos própiros.

  Foi adicionado um tratamento de erro para que exiba uma mensagem para o usuário, utilizando rótulos (Label Data).
</details>

<details>
  <summary><b>👮🏾‍♀️ 3 - Classificação dos dados</b> </summary>

  Com a constante coleta e manipulação de dados em massa, é preciso se atentar para as legislações de proteção à dados pessoais. No Business Central, os dados podem ser classificados de maneira simples, adicionando o parâmetro `DataClassification` com o seu devido valor.

  Para ver a documentação com os valores possível, acesse [DataClassification Property](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/properties/devenv-dataclassification-property).
</details>

<details>
  <summary><b>📋 4 - Permissões de acesso</b></summary>

  > Nada é pior do que testar, validar e entregar o aplicativo que o cliente não consegue acessar.

  Para gerar automaticamente o arquivo de permissões, abra a paleta de comandos (`ctrl + shift + p`) e digite `AL: Generate permission set containing current extension objects`. Será criado um arquivo de permissões. Após publicar o projeto, o administrador pode acessar a política abra a página de política de permissões (`Tell me > permissions sets`).

  - **Atenção:** A criação da política de permissões sempre subescreverá o arquivo existente. Par amanter ambos, renomeie o arquivo `extensionsPermissionSet.xml`. 
  - É possível criar mais de uma política de permissões, por exemplo, uma rotina administrativa, uma de leitura e escrita, e outra de somente leitura.
  
</details>

<details>
  <summary><b>🧾 5 - Relatórios</b></summary>

  Usando o snippet `report` foi criada a estutura básica do relatório. Como layout padrão, foi inserido o padrão RDLC, e foi definido um arquivo `Conteúdo Filmes e Séries disponíveis para exibição.rdl`. Se o relatório fosse um arquivo do Word, seria informada a extensão `.docx`.

  - após a criação, o projeto foi compilado com `ctrl + shift + b`. Feito isso, o arquivo de layout foi criado automaticamente.
  - o arquivo `.rdl` foi aberto e editado no Microsoft Report Buider
    - No painel do Report Builder, selecionar: DataSet_Result > Insert > Table > Table Wizard > Chose an existing dataset > Next > Movido o campo `code` para o row group > movidos demais campos para a seção valores > Desmarcar todos as caixas > Next > Finish > SAVE.

  Um relatório é composto por duas partes:

  1. Conjunto de dados (Dataset): é um arquivo `.al` que define as tabelas, campos, filtrose lógica do relatório
  2. Layout: Arquivo **RDLC** ou **Word** que mostrará o relatório quando for gerado no BC.

  Para cada objeto do BC, você pode armazenar até dois layouts (um rdlc e um World). Depois de instalado no BC, o cliente pode alterar ou criar novos layouts com o recurso *Custom Report Layouts*.

</details>

<details>
  <summary><b>🧾 6 - Link de Ajuda</b> /summary>

  Inserido link (fictítio) para que no canto superior direito da página de lista, seja possível abrir documentação externa. O parâmetro de link de ajuda é inserido na Page List.

</details>

<hr/>

## Utilidades e Referências

- [Tables Overview](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-tables-overview)
- [Pages Overview](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-pages-overview)
- [Retaining table data after publishing](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-retaining-data-after-publishing)
- [Triggers Overview](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/triggers-auto/devenv-triggers)
- [Label Data Type](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/methods-auto/label/label-data-type)
- [Classifying Data Sensitivity](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-classifying-data-sensitivity)
- [Classifying Data in Dynamics 365](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-classifying-data)
- [Create Users According to Licenses](https://learn.microsoft.com/en-us/dynamics365/business-central/ui-how-users-permissions)
- [Microsoft® Report Builder](https://www.microsoft.com/en-us/download/details.aspx?id=53613)
- [Reports Overview](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-reports)
- [Report and Document Layouts Overview](https://learn.microsoft.com/en-us/dynamics365/business-central/ui-manage-report-layouts)
- [Adding Help Links from Pages, Reports, and XMLports](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-adding-help-links-from-pages-tables-xmlports)
- [Table Extension Object](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-table-ext-object)
- [Page Extension Object](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-page-ext-object)
- [Subscribing to events](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-subscribing-to-events)

<!-- CONTACT -->

## Contato

**Author:** Jonas Araujo de Avila Campos

![Alt text](https://github.com/jonasaacampos/jonasaacampos/raw/master/img/banner2.png)

<p align='center'>
  <a href='https://github.com/jonasaacampos'>
    <img src='https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white'/>
  </a>
  <a href='https://www.linkedin.com/in/jonasaacampos/'>
    <img src='https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white'/>
  </a>
</p>