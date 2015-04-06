---
title: josync
layout: project
github_url: jeinarsson/josync
web_url: http://josync.readthedocs.org
collaborators:
  - github_user: jeinarsson

under: projects
---

A simple backup program for Windows. It's written in Python and uses `rsync` through Cygwin to keep local directories synced with target folders on external hard drives or mapped network drives. 

To copy open files, `josync` automatically creates shadow copies of the drives being backed up. Backup jobs are specified in JSON files and can easily be scheduled using the Windows task scheduler.