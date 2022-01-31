### Hexlet tests and linter status:
[![Actions Status](https://github.com/Palms455/devops-for-programmers-project-lvl2/workflows/hexlet-check/badge.svg)](https://github.com/Palms455/devops-for-programmers-project-lvl2/actions)

# Devops for programmers project lvl 2
Деплой Docker-образов с помощью Ansible на платформе DigitalOcean

## Сайт: https://devoops.website/

## Make команды
- make install - установка зависимосей, для деплоя
- make remote-install - установка зависимостей на серверах
- make deploy - разворачивание приложения на DO c vault-password-file
- make deploy-ask-pass - разворачивание приложения с указанием пароля вручную
- make encrypt-vault - расшифровка файла с паролями
- make decrypt-vault - зашифровка файла с паролями
- make view-vault - просмотр содержимого файла с паролями
- make edit-vault - редактирование содержимого файла с паролями
- make touch-vault-password-file - создать vault-password file

Использумые переменные окружения
- db_host
- db_pass
- db_user
- db_name
- db_port
- datadog_api_key
- datadog_site