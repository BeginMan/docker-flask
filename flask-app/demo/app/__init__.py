#!/usr/bin/python
"""
    :Author: beginman(fangpeng)
    :Mail:  xinxinyu2011@163.com
    :Created Time: 2016-11-10 14:58:35
    :Copyright: (c) 2016 by beginman.
    :License: MIT, see LICENSE for more details.
"""
from flask import Flask


app = Flask(__name__)

from app import views
