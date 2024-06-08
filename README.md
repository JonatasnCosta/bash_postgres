# bash_postgres
Docker Postgres Setup Script
Este repositório contém um script em Bash para configurar e executar um contêiner Docker com a imagem Postgres.

Pré-requisitos
Docker instalado na sua máquina.
Permissões de superusuário (sudo).
Uso
Clone este repositório para a sua máquina local.

bash
Copiar código
git clone https://github.com/seu-usuario/nome-do-repositorio.git
cd nome-do-repositorio
Torne o script executável (se ainda não estiver).

bash
Copiar código
chmod +x setup_postgres.sh
Execute o script.

bash
Copiar código
./setup_postgres.sh
Siga as instruções interativas fornecidas pelo script:

Nome da imagem Docker: Forneça um nome para o contêiner Docker.
Senha: Forneça uma senha para o usuário postgres.
O que o script faz?
Baixa a imagem oficial do Postgres do Docker Hub.
Solicita ao usuário o nome do contêiner Docker.
Solicita ao usuário uma senha para o banco de dados Postgres.
Executa um contêiner Docker com o nome e a senha fornecidos, mapeando a porta 5432 do contêiner para a porta 5432 da máquina host.
Exemplo de Execução
bash
Copiar código
Downloading the Postgres image
.................................

What is the name of the docker image?
my_postgres_container

What is the password ?
mysecretpassword
Verificando o contêiner em execução
Para verificar se o contêiner está em execução, você pode usar o seguinte comando:

bash
Copiar código
sudo docker ps
Você deve ver uma saída semelhante a esta:

bash
Copiar código
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
abcd1234efgh        postgres            "docker-entrypoint.s…"   2 minutes ago       Up 2 minutes        0.0.0.0:5432->5432/tcp   my_postgres_container
Notas
Certifique-se de que a porta 5432 não esteja sendo usada por outro serviço antes de executar o contêiner.
Você pode conectar-se ao banco de dados Postgres usando qualquer cliente Postgres, como psql ou ferramentas GUI como pgAdmin, usando as credenciais fornecidas durante a execução do script.
Contribuições
Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

Licença
Este projeto está licenciado sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.

Sinta-se à vontade para ajustar os detalhes conforme necessário, como o nome do repositório e as instruções de contribuição.