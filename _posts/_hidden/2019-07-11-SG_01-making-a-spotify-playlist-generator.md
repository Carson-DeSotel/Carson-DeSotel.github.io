---
layout: post
title: "SG_01: Making a Spotify Playlist Generator"
date: 2019-07-11
---

# Concept & Background
I've seen the occasional post and meme where someone would take different songs on Spotify and use their titles to spell out a message inside a playlist. I want to create that into an app that allows me to input text and then receive a custom Spotify Playlist from it.

# Implementation
I'd like to use Python to integrate with the Spotify Web API using the Requests library. I've been trying to use Requests for a while, but haven't found anything that I really wanted to use it for.
The problem is that Spotify uses a *Web* API, meaning that in order to truly authenitcate accounts and gain access to their data, I need to host the application on a website. 
In order to do this, I'll be using a Flask website to host the application, Requests to handle the actual functions, as the Web API says that it can all be done using HTTP requests. 
I'll need more knowledge in HTTP requests, the Spotify Web API & Authorization, Flask, CSS, HTML, Python Requests, and hosting the Flask application on an external server.

I'm getting pretty worried. This seems to be a more monumental task than I would usually handle, but I really hope I can get something presentable up and running.

# Links
https://developer.spotify.com/documentation/web-api/quick-start/

https://developer.spotify.com/documentation/general/guides/authorization-guide/

https://flask.palletsprojects.com/en/1.0.x/

https://2.python-requests.org/en/master/
