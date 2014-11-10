#!/usr/bin/env python

from setuptools import setup, find_packages

setup(name = 'scnprojectsetup',
      version = '0.0.1',
      description = 'Utility for creating project folders for SCN',
      author = 'Sebastian Antonsen',
      author_email = 'sebastian@stormstudios.no',
      packages = find_packages('src'),
      package_dir = {'':'src'},
      package_data = {
        # include any .json files
        'src':['*.json']
        }
      )
