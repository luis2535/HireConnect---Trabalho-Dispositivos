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
- **Localização**: `backend/trabdispositivos`
- **Pré-requisitos**:
  - **Maven**: Versão 3.2.5.
  - **Java**: Versão 11.
  - **MySQL**:
    - Rodando na porta **3306**.
    - **Username**: `root`.
    - **Senha**: `1234`.
  - Não é necessário criar tabelas ou inserir dados manualmente. O projeto utiliza **migrations** para criação automática de tabelas e dados iniciais.

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
