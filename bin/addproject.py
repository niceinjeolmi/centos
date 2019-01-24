#!/usr/bin/env python
#coding:utf8
import sys
import os

def addProject(name):
	"""
	프로젝트를 생성하는 함수입니다.
	"""
	root = "/project"
	subDirs = ["shot",
			"in",
			"out",
			"edit",
			"asset",
			"asset/char",
			"asset/shader",
			"config",
			"config/ocio",
			"config/thumbnail",
			"doc",
			"doc/concept"]
	for s in subDirs:
		p = "/".join([root, name,s])
		os.makedirs(p)

if __name__ == "__main__":
	if len(sys.argv) != 2:
		print "사용법:"
		print "$ addproject projectname"
		sys.exi()
	name = sys.argv[1]
	addProject(name)
