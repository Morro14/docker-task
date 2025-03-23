#!/bin/sh

python manage.py flush --no-input
python manage.py migrate
python manage.py collectstatic --no-input
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('admin', 'admin@email.com', 'admin')" | python manage.py shell

exec "$@"
