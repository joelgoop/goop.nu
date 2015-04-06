---
title: josync
layout: project
github_url: jeinarsson/josync
web:
  url: http://josync.readthedocs.org
  note: (documentation)
collaborators:
  - github_user: jeinarsson

under: projects
excerpt: A simple backup program for Windows that syncs local directories with target folders on external hard drives or mapped network drives. 
---

A simple backup program for Windows. It's written in Python and uses `rsync` through Cygwin to keep local directories synced with target folders on external hard drives or mapped network drives. 

To copy open files, `josync` automatically creates shadow copies of the drives being backed up. Backup jobs are specified in JSON files and can easily be scheduled using the Windows task scheduler.