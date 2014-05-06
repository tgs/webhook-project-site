#!/usr/bin/env python

from __future__ import print_function
import re
import os.path

env_re = re.compile(r'env\([\'"](\w+)[\'"]')

exit_stat = 0

with open('template.env') as template_env:
    template = template_env.read()
    with open(os.path.join('hook_project', 'settings.py')) as settings:
        settings = settings.read()
        for match in env_re.finditer(settings):
            if match.group(1) not in template:
                print("{0} not found in template.env".format(match.group(1)))
                exit_stat = 1

exit(exit_stat)
