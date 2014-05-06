This is a container project for working on django-badgekit-webhooks.

To use it, clone this repo.  Create and activate a virtualenv to work on this
project with isolated dependencies.  Install foreman (a node.js project), or
probably honcho (python version) would work fine.

Copy template.env to .env, and edit the settings.  Then run:

    pip install -r requirements.txt
    foreman run ./manage.py syncdb
    foreman run ./manage.py runserver

Now you should be able to navigate to http://localhost:8000/bk/hello/ and
see "Hello, world. Badges!!!"

This project includes a git submodule in `apps/badgekit_webhooks`.  The `pip
install -r requirements.txt` will install this submodule in development mode.
The Django development server is fancy enough to notice that you've changed
files in the django-badgekit-webhooks module.  Neat.

BUT, if you want to develop `django-badgekit-webhooks`, be careful!  Working
with submodules, it's easy to lose your work.  You may want to check out that
project into a separate directory, and run `python setup.py develop` there,
so that you have better control.  A submodule is used so that Heroku gathers
it up in its deployment.  If there's a better way, tell me!
