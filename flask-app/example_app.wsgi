import site
site.addsitedir('/opt/flask-app/')

from app import app as application
