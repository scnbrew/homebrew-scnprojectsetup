#!/usr/local/bin/python

import sys
import os
import argparse
import json

class ProjectSetup():

    def __init__(self):
	# temp - destination root
	destination_root = os.getcwd()
	here = str(os.path.dirname(os.path.realpath(__file__)))
	config = os.path.join(here,'config.json')

	self.project_types = ['ftr','shr','tlr']
	self.destination = None

	self.args = self.parser(config, destination_root)
	self.destination = self.processArgs(self.args, self.project_types)
	self.paths = self.getProjectPaths(config, self.args.type, self.destination)

	self.createProject(self.paths)

	# TODO: genereate text file in PROJECT/ROOT called PROJECT_NAME
	# creates a file with no extension. Is this what we want?
	self.touchProjectFile(self.destination)

    def _dirtyString(self,string):
	# only allow lowercase and underscore
	clean_string_verification = 'abcdefghijklmnopqrstuvwxyz_'
	clean_string = ''.join([x for x in string if x in clean_string_verification])
	# check for uppercase letters
	if string.isupper() or not (string.isupper() or string.islower()):
	    return 1
	elif len(clean_string) != len(string):
	    return 2
	else:
	    return False

    def parser(self,config,destination_root):
	parser = argparse.ArgumentParser(prog='project_setup',
					 description='A sript that creates project folders based on a config file')
	parser.add_argument("-v","--verbose",help='Increase output verbosity',
			    action="store_true")
	parser.add_argument("-c","--config",help='Specify a custom config file',
			    default=config,
			    metavar='FILE')
	# TODO: remove the default form destination and make it compulsory
	parser.add_argument("-d","--destination",help="Specify a custom destination folder",
			    default=destination_root,
			    metavar='FOLDER')
	parser.add_argument("name",help="Project name")
	parser.add_argument("type",help="Project type: ftr, shr, trl")
	args = parser.parse_args()
	return args

    def processArgs(self,args,project_types):
	project_type = args.type
	project_name = args.name
	verbose = args.verbose
	destination_root = args.destination

	# -------------------- #
	# process project_type
	# -------------------- #
	if project_type in project_types:
	    project_type = project_type
	else:
	    try:
		project_type = int(project_type)
		project_type = project_types[project_type]
	    except:
		sys.exit(args.type + ' is not a recognised project type')
	if verbose:
	    print 'PROJECT TYPE: %s' % project_type

	# -------------------- #
	# process project_name
	# -------------------- #
	if self._dirtyString(project_name):
	    if self._dirtyString(project_name) == 2:
		sys.exit("Project name contains non-ascii characters." \
			 "\nThis is not according to specification. Project creation cancelled.")
	    else:
		sys.exit("Project name contains UPPERCASE letters."\
			 "\nThis is not according to specification. Project creation cancelled.")

	if verbose:
	    print 'CONFIG FILE: %s' % args.config

	destination = os.path.join(destination_root,project_name)
	if verbose:
	    print 'DESTINATION DIR: %s' % destination

	return destination

    def getProjectPaths(self,project_folders_cfg,path_type,path_root):
	# load the config file
	json_data = open(project_folders_cfg)
	folder_cfg = json.load(json_data)
	json_data.close()

	# config file list definitions
	pathstring = 0

	# parse the config file
	paths = folder_cfg['project']
	paths.extend(folder_cfg[path_type])


	project_paths = []
	for path in paths:
	    project_paths.append(os.path.join(path_root,path_type,path[pathstring]))

	# return all paths to be created as a list of strings
	return project_paths

    def createProject(self,paths):
	for path in paths:
	    try:
		os.makedirs(path)
	    except OSError as e:
		existing_folder = os.path.join(self.destination,self.args.type)
		sys.exit("%s already exists" % existing_folder)

    def touchProjectFile(self,destination):
	project_file = os.path.join(destination,self.args.name)
	open(project_file, 'a').close()

if __name__ == '__main__':
    project_setup = ProjectSetup()
