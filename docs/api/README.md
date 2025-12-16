# Практика 6 — Postman

Я сделал коллекцию в Postman для тестирования API моего проекта «Органайзер коллекций».

## Сервис
Использую тестовый API:
https://jsonplaceholder.typicode.com

## Environment
Создано окружение `CollectionOrganizerEnv` с переменной:
- `base_url = https://jsonplaceholder.typicode.com`

## Запросы в коллекции

1) GET — получить список
- `GET {{base_url}}/posts`

2) POST — добавить объект
- `POST {{base_url}}/posts`
Body (JSON):
```json
{
  "title": "Книга",
  "author": "Автор",
  "year": 2024
}
