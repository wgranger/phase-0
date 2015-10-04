# How does tracking and adding changes make developers' lives easier?

Tracking and adding changes can help a developer keep an eye on what changes have taken place throughout the development of a project. It can help a developer see how a project has evolved and revert to an earlier version if needed. 

# What is a commit?

Although version control software will track any changes made to a file, these changes are not saved in place until a commit is made. A commit is a snapshot of the current state of a project, and each commit, once made, can be referenced in the future. A commit can be made in git once a file is staged in the terminal and the appropriate "git commmit" command is entered. Typically, a message is included with each commit to explain which changes are contained in that commit.

# What are the best practices for commit messages?

The best practice for commit messages are to include a short, header description of the commimt. Next, the body of the message should include present-tense imperatives that explain which changes were made and how it contrasts from earlier versions of the file. 

# What does the HEAD^ argument mean?

The HEAD^ argument will refer to an earlier commit that was made. "HEAD" refers to the current commit while "HEAD^" refers to the previous commit. Using "HEAD~3" will refer to the commit before the previous, and increasing that number will go back any number of commits. 

# What are the 3 stages of a git change and how do you move a file from one stage to the other?

The three stages of git change include working, staged, and commit. The working stage is the directory in which files are altered or modified in some way. Once you are satisfied with some of the work that has been made, the files may be staged in preparation for the final commit (saving place). The staging state is like the receptionist desk at the library where you put all your books before you are ready to check out. Once everything is ready, a commit can be made to create a snapshot of the file. After some changes have been made on a file it is usually a good idea to run "git status" to see exactly which files have been changed and which ones might be ready for staging. To add a file to staging, the user must type "git add <filename>" in the appropriate directory in order to move the file to staging. In order to make a commit a user must type "git commit -m" in the terminal with a message (in quotes) at the end of the command explaining what changes were made in this version of the commit.

# Write a handy cheatsheet of the commands you need to commit your changes?

git status
git add <filename>
git commit -m "message goes here"

# What is a pull request and how do you create and merge one?

In order to create a pull request the branch must be pushed to the remote repository. This is done by checking out back to the master branch (in the terminal) and then pulling fetched changes into the remote repository. 

git checkout master
git pull origin master

Next, the changes must be merged with the branch where work was done. 

git checkout <working branch name>
git merge master

You now need to push a copy of this up to the GitHub fork. Terminal may ask you to sign into GitHub by using your username and password. The commands to push onto GitHub are "git push origin <branch name>". Making a pull request on GitHub is pretty simple. First, access the GitHub folder where you pushed your work and click on the box that notifies you of a new pull request. The request can then be fulfilled and placed into the directory of your choice. After all files are pushed and merged, the temporary working branch can be deleted via GitHub. It is also a good idea to delete the branch from the terminal using the "git branch -d <branch name>" command.

# Why are pull requests preferred when working with teams?

Pull requests are preferred in teams so changes can be reviewed and scrutinized before they are merged with the master branch. It is another added layer of protection for the precious master file a team is working with.