# Landing Page API

[API](https://landing-page-api-production.up.railway.app/) usada para a [Landing Page](https://landing-page-ar.netlify.app/).

Esse projeto faz parte do curso "React Avançado: Crie aplicações com NextJS, Strapi e mais".

## Requisitos

Esse projeto usa PostgreSQL.

- Instale o [PostegreSQL](https://www.postgresql.org) em sua máquina local
- Configure a conexão em [config/database.js](config/database.js)
- Backup do banco em [database.sql](database.sql)
- Adicione o conteúdo de [data.zip](data.zip) na pasta public/uploads

## Desenvolvimento

Após clonar o projeto, instale as dependências:

```
yarn install
```

E rode usando:

```
yarn develop
```

As urls de acesso são:

- `http://localhost:5000/admin` - Dashboard para criar e popular dados
- `http://localhost:5000/graphql` - Ambiente GraphQL para testar a queries

No primeiro acesso ao Admin é necessário criar um usuário.
