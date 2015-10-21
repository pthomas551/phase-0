How does tracking and adding changes make developers' lives easier?

It allows code changes to be easily retrieved and/or reverted if needed.

What is a commit?

A commit is a snapshot of the state of a file at a particular time.

What are the best practices for commit messages?

Commit messages should use the imperative voice and contain a concise header (50 words or less)

What does the HEAD^ argument mean?

It refers to the previous commit from the current one.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

1. Make changes and save file

2. Add file to commit (git add)

3. Commit changes (git commit)

Write a handy cheatsheet of the commands you need to commit your changes?

(To commit to local repo use 1-3 only)

1. git status
2. git add (filename)
3. git commit -m "message"
4. git checkout master
5. git pull origin master
6. git checkout feature-branch-name
7. git merge master
8. git push origin feature-branch-name

What is a pull request and how do you create and merge one?

A pull request "pulls" a commit from the server for review and merging with the master branch.

Why are pull requests preferred when working with teams?

This allows for another team member to review your work before it is merged with the master.

Go through the git workflow you just established and add your reflection to the file. (If you are creating a video reflection, add the video link to your reflection file.)



Add your changes, commit them, and make a pull request to your repository.
Merge the pull request into your master branch