
##   WFGit 1.0

is script implementation of a workflow using GIT.

##   INTRODUCTION

The basic workflow as two branch where we put develop stage
and master (read as release) stage.

Every modification was made using a separate temporary branch
called feature-NAME, where design the new feature to add.
When finished a feature can be put in the develop branch.

Every new release open a new temporary branch
called release-XX, this release branch will be used for
adding the last modification before release, at the end
the branch will be merge in the develop and master branch
tagging it as XX version.

When an already released version need to be fixed, is
possible to open an hotfix, it is a branch hotfix-NAME
that permit to make the change (tipically only bugfix).
At the end the hotfix will be merged with master and develop.

[For more information about the workflow a good guide is here.](http://nvie.com/posts/a-successful-git-branching-model/)


##   USAGE

WFGit is managed by the wgit command.

	wgit [COMMAND] [OPTIONS]

The all command are:
	wgit init        Init a new repository, with only .gitignore
		         file, and making the first commit with the
		         two main branch develop and master

	wgit add         Permit to add some file in the repository
		         tipically used with feature/hotfix/release
		         temporary branch.
		   
	wgit convert     Permit to convert a standard git repositori to 
		         a new wgit repository.

	wgit log         Permit to show the log commits from the current
		         branch.

	wgit commit      Usable only in the temporary branch, permit to save
		         modification to file.

	wgit status      Default beaviour of wgit, it show the state of repository.

	wgit feature     Manage creating/saving a new feature, or keep it in pause.

	wgit release     Manage creating/saving a new release.

	wgit hotfix      Manage creating/saving a new hotfix.


### Examples of common tasks


	wgit init #create new repository
	 ... #edit/create file and directoyr
	wgit feature basic # create a task activity for a new feature called 'basic'
	wgit add file1 file2 dir1/dir2/file3 dir3/dir4 #adding some directory/file
	wgit commit file1 -m "text comment" # commit file1 with comment inline
	wgit commit -a  # commit all file uncommitted and open editor for adding the comment
	wgit feature # close feature basic and merge all in develop branch
	wgit feature experiment # add a feature called experiment
	... # modify commit ..
	wgit feature --pause # stop the experiment feature, go back to the last development
	wgit feature newexp # newexp feature created
	... # write code...
	wgit feature # close the newexp feature, and merge it in develop
	wgit feature experiment # open the paused feature experiment
	... # coding..
	wgit feature  # close and merge, if there are some conflict ask to resolve

	...

	wgit release 1.2 # open release branch 1.2
	... #coding..
	wgit commit -a -m "ready for release 1.2"
	wgit release # close and save in develop and master, creating tag 1.2

	...

	wgit hotfix bugs # create a hotfix for some bugs...
	...#coding..
	wgit commit -a -m "fix bug"
	wgit hotfix # save fix in master and develop.


	gitk --all # to see al repository


##   INSTALL

	Installation of WFGit is easy:

           tar zxf wfgit.tar.gz
           cd wfgit
           make install

	Uninstalling it with:
     
           make uninstall


##   DEVELOPMENT



##   AUTHOR
Name:    Cristian Sicilia


