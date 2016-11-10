#!/usr/bin/python
"""
    :Author: beginman(fangpeng)
    :Mail:  xinxinyu2011@163.com
    :Created Time: 2016-11-10 14:58:59
    :Copyright: (c) 2016 by beginman.
    :License: MIT, see LICENSE for more details.
"""
import os
from app import app
from flask import jsonify
import redis

rds = redis.Redis(
    host=os.getenv('DB_PORT_6379_TCP_ADDR'),
    port=os.getenv('DB_PORT_6379_TCP_PORT')
)

@app.route('/')
@app.route('/index')
def index():
    return ":) Flask app for Docker. Please visit '/rds' to check redis server. "


@app.route('/rds')
def test():
    return jsonify(rds.info())
