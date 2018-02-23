Lesson 1 - Intro to Continuous integration
==========================================

[![Build Status](https://travis-ci.org/navratil/lesson1.svg?branch=master)](https://travis-ci.org/navratil/lesson1)

Goal
----
Purpose of this exercise is to build fully automated CI process. 
The project itself is very simple - static web site deployed to AWS S3 bucket.

The desired workflow is
* Code is commited to GitHub
* Travis CI will launch the build process
* Test the HTML/CSS code
* Deploy web assets to a pre-configured S3 bucket

Prerequisites
-------------

* GitHub.com account
* travis-ci.org account
* Amazon AWS S3 bucket & keys 

Steps
-----

