
# Notebook API
**Notebook API** é uma aplicação desenvolvida para gerenciar contatos, incluindo informações sobre telefones e endereço. Ela permite a criação, leitura, atualização e exclusão (CRUD) de contatos, que podem ter múltiplos números de telefone e um endereço associado.

## Tecnologias

<p>
  <img alt="Ruby version" src="https://img.shields.io/static/v1?label=ruby&message=2.7.8&color=18181B&labelColor=d42e2e">
  <img alt="Rails version" src="https://img.shields.io/static/v1?label=rails&message=5.2.8&color=18181B&labelColor=d42e2e">
  <img alt="SQLite3 version" src="https://img.shields.io/static/v1?label=sqlite&message=3.x&color=18181B&labelColor=003B57">
  <img alt="SQLite3 version" src="https://wakatime.com/badge/user/30563c84-4568-4594-9bbe-b31f0effd26b/project/b67f970d-c835-4865-8cb2-9a36815bf6e5.svg">
</p>


## Diagrama ER

```mermaid
erDiagram
    Phones {
        int id
        string number
        int contact_id
    }
    Contacts {
        int id
        string name
        string email
        datetime birthday
        int type_id
    }
    Types {
        int id
        string description
    }
    Address {
        int id
        string street
        string city
        int contact_id
    }

    Phones }o--|| Contacts: "belongs to"
    Contacts ||--o{ Types: "has a"
    Address }o--|| Contacts: "belongs to"
```

## Licença
Este projeto está licenciado sob a [MIT License](LICENSE).