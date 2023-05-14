# Django specific settings
import inspect
import os
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "myproject.settings")
from django.db import connection
# Ensure settings are read
from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()

from django.contrib.auth.models import User
from onlinecourse.models import *
from datetime import date

#Find all courses
all_courses = Course.objects.all()
print(all_courses)
course = Course
for question in course.question_set:
    print(question.question_text)