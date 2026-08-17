# Домашнее задание к занятию «Введение в Terraform»
Выполнил: Береснев Игорь Андреевич

---

Задание 1

Перейдите в каталог src. Скачайте все необходимые зависимости, использованные в проекте.
Изучите файл .gitignore. В каком terraform-файле, согласно этому .gitignore, допустимо сохранить личную, секретную информацию?(логины,пароли,ключи,токены итд)
Выполните код проекта. Найдите в state-файле секретное содержимое созданного ресурса random_password, пришлите в качестве ответа конкретный ключ и его значение.
Раскомментируйте блок кода, примерно расположенный на строчках 29–42 файла main.tf. Выполните команду terraform validate. Объясните, в чём заключаются намеренно допущенные ошибки. Исправьте их.
Выполните код. В качестве ответа приложите: исправленный фрагмент кода и вывод команды docker ps.
Замените имя docker-контейнера в блоке кода на hello_world. Не перепутайте имя контейнера и имя образа. Мы всё ещё продолжаем использовать name = "nginx:latest". Выполните команду terraform apply -auto-approve. Объясните своими словами, в чём может быть опасность применения ключа -auto-approve. Догадайтесь или нагуглите зачем может пригодиться данный ключ? В качестве ответа дополнительно приложите вывод команды docker ps.
Уничтожьте созданные ресурсы с помощью terraform. Убедитесь, что все ресурсы удалены. Приложите содержимое файла terraform.tfstate.
Объясните, почему при этом не был удалён docker-образ nginx:latest. Ответ ОБЯЗАТЕЛЬНО НАЙДИТЕ В ПРЕДОСТАВЛЕННОМ КОДЕ, а затем ОБЯЗАТЕЛЬНО ПОДКРЕПИТЕ строчкой из документации terraform провайдера docker. (ищите в классификаторе resource docker_image )

### Скриншот Инициализации Terraform

![init](screenshots/init.png)

### Скриншот файла .gitignore

![gitignore](screenshots/gitignore.png)

### Скриншот terraform apply + секрет в state

![state_1](screenshots/state_1.png)

![state_2](screenshots/state_2.png)

### Скриншот terraform validate с ошибками 

![validate](screenshots/validate.png)

### Скриншот исправленного main.tf

![main.tf](screenshots/main.tf.png)

### Скриншот docker ps с hello_world

![docker](screenshots/docker.png)

### Скриншот terraform destroy + пустой state

![destroy_1](screenshots/destroy_1.png)

![destroy_2](screenshots/destroy_2.png)

![destroy_3](screenshots/destroy_3.png)

### Скриншот Образ nginx остался

![nginx](screenshots/nginx.png)
