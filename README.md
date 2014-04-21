This is a container project for working on django-badgekit-webhooks.

To use it, clone this repo and https://github.com/tgs/django-badgekit-webhooks
into separate directories.  Create and activate a virtualenv to work on these
projects with isolated dependencies.

Then:

    cd django-badgekit-webhooks
    python setup.py develop

    cd ../webhook-project-site      # this project
    pip install -r requirements.txt
    python manage.py syncdb
    python manage.py runserver


Now you should be able to navigate to http://localhost:8000/bk/hello/ and
see "Hello, world. Badges!!!"

The Django development server is fancy enough to notice that you've changed
files in the django-badgekit-webhooks module.  Neat.
