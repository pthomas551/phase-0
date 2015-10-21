How does tracking and adding changes make developers' lives easier?

It allows code changes to be easily retrieved and/or reverted if needed.

What is a commit?

A commit is a snapshot of the state of a file at a particular time.

What are the best practices for commit messages?

Commit messages should use the imperative voice and contain a concise header (50 words or less)

What does the HEAD^ argument mean?

It refers to the previous commit from the current one.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

1. Pull changes from remote repo (git checkout master, git pull origin master)

2. Merge changes from master into feature branch if needed (git checkout feature-branch-name, git merge master)

3. Push feature branch to remote repo (git push origin feature-branch-name)

Write a handy cheatsheet of the commands you need to commit your changes?

1. git status
2. git add (filename)
3. git commit -m (filename)

What is a pull request and how do you create and merge one?

A pull request "pulls" a commit from the server for review and merging with the master branch.

Why are pull requests preferred when working with teams?

This allows for another team member to review your work before it is merged with the master.