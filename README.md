# HireConnect---Trabalho-Dispositivos

**HireConnect** é uma aplicação desenvolvida para gerenciar cadastros de clientes e freelancers, possibilitando contratações e gerenciamento de serviços. 

## **Funcionalidades da Aplicação**

1. **Cadastro de Usuário** (Cliente/Freelancer)
2. **Login de Usuário**
3. **Clientes**:
   - Criar um serviço
   - Visualizar registros de serviços criados
   - Atribuir serviços a freelancers que comentaram no serviço
4. **Freelancers**:
   - Buscar serviços existentes com base em filtros de especialidade
   - Comentar em serviços enviando seu orçamento
   - Visualizar serviços atribuídos ao usuário

---

## **Tecnologias Utilizadas**

- **Backend**: Spring Boot e Java.
- **Frontend**: Android Studio.

---

## **Estrutura do Projeto**

### **Backend**

#### **Localização**
O backend do projeto está localizado no diretório:  
`backend/trabdispositivos`

#### **Pré-requisitos**
Para rodar o backend do projeto, é necessário configurar os seguintes itens:

1. **Java**: Versão 11.
2. **Maven**: Versão 3.2.5.
3. **MySQL**:
   - Servidor local rodando na porta **3306**.
   - **Usuário**: `root`.
   - **Senha**: `1234`.

Não é necessário criar tabelas ou inserir dados manualmente no banco de dados, pois o projeto utiliza **migrations** para realizar automaticamente a criação das tabelas e os inserts iniciais necessários.

#### **Arquitetura**

O backend segue a arquitetura **Repository-Service-Controller**, que organiza o código em camadas para garantir separação de responsabilidades:

- **Repository**: Gerencia a interação direta com o banco de dados, utilizando interfaces do Spring Data JPA para simplificar operações CRUD.
- **Service**: Centraliza as regras de negócio, encapsulando a lógica necessária para manipular os dados recebidos dos repositórios.
- **Controller**: Recebe as requisições HTTP, chama os métodos do Service e retorna as respostas no formato JSON.

Além disso, utiliza modelos **Request** e **Response** para organizar os dados que entram e saem da API:

- **Request**: Representa os dados enviados pelo cliente à API, garantindo validação e segurança.
- **Response**: Define os dados que serão retornados ao cliente, ocultando informações desnecessárias ou sensíveis.

#### **Descrição do Projeto**
O backend é responsável por gerenciar a API para cadastro e gestão de serviços em uma plataforma de trabalhos freelancers. As principais tabelas utilizadas no banco de dados são:

- **`usuario`**: Armazena informações básicas de cada usuário (nome, login, senha, especialidades, tipo de usuário - cliente ou freelancer).
- **`especialidade`**: Lista as especialidades disponíveis na plataforma. A migration `V010` já inclui 10 especialidades iniciais.
- **`tipo_usuario`**: Define os dois tipos possíveis de usuários: cliente e freelancer.
- **`usuario_avaliacao`**: Registra as avaliações recebidas pelos freelancers.
- **`servico`**: Representa os serviços criados pelos clientes, incluindo descrição, valor estimado e cliente responsável.
- **`servico_especialidade`**: Relaciona serviços às especialidades necessárias para sua execução.
- **`servico_comentario`**: Armazena os comentários feitos pelos freelancers nos serviços, incluindo orçamentos sugeridos.
- **`servico_usuario`**: Relaciona serviços aos freelancers que aceitaram realizá-los.
### **Frontend**
- **Localização**: `frontend/trabfinal`

#### Estrutura do Código
- **`app/java/com.example.trabfinal`**
  - **a. adapter**:
    - Contém os adaptadores responsáveis por intermediar os dados do modelo com a interface do usuário.
    - Utilizado principalmente para exibir listas dinâmicas (ex.: listagem de serviços).
    - Baseado no componente **RecyclerView** do Android, permitindo uma exibição eficiente e customizável de listas retornadas pelos endpoints da API.
  - **b. api**:
    - Define as interfaces para comunicação com as APIs RESTful.
    - Inclui os endpoints e métodos para realizar requisições ao backend.
  - **c. model**:
    - Define as classes de modelo que mapeiam os dados enviados e recebidos via API.
    - Essas classes são utilizadas como objetos para transporte de informações entre o backend e o frontend.
  - **d. utils**:
    - Contém utilitários usados no projeto, como o `SessionManager`, que gerencia as sessões de usuários.
  - **e. activities (sem pastas específicas)**:
    - Armazena as **activities** do aplicativo.
    - Cada activity representa uma tela da aplicação e contém suas respectivas funcionalidades.

- **`app/res`**
  - **a. drawable**:
    - Contém imagens e arquivos XML utilizados para personalizações visuais das telas do aplicativo.
  - **b. layout**:
    - Inclui arquivos XML que definem o layout visual de cada tela do aplicativo.
  - **c. values**:
    - Armazena recursos reutilizáveis, como textos, cores e estilos.

---

## **Como Executar o Projeto**

### **Backend**
1. Certifique-se de que o Java, Maven e MySQL está configurado corretamente (porta 3306, usuário `root`, senha `1234`).
2. Navegue até a pasta do backend: `backend/trabdispositivos`.
3. Execute o projeto com o Maven

### **Frontend**

4. Abra o Android Studio.
5. Importe o projeto localizado em `frontend/trabfinal`
6. Inicie um emulador ou conecte um dispositivo Android
7. Compile e execute o arquivo
