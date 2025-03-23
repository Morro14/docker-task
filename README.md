# Задание 4.10 (HW-04)

Образы django и nginx созданны и загружены на docker hub: morro14/docker-task-web:latest morro14/docker-task-nginx:latest (загружаются через docker-compose).

Полный проект со сборкой Docker файлов на другой ветке: https://github.com/Morro14/docker-task/tree/dev.

Запуск мультиконтейнера с помощью docker-compose

    docker-compose -f docker-compose.yml up -d --build
    
Django должно быть доступно по ссылке http://localhost:1999/ (именно localhost добавлен в CSRF_TRUSTED_ORIGINS, поэтому IP адресс будет вызывать ошибку).

Админка django по ссылке http://localhost:1999/admin, имя: admin, пароль: admin.

