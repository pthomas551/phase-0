# 1.1 Think About Time Reflection

Which time management and productivity ideas did you learn about?

I learned about time boxing/pomodoro time, tips for achieving a state of "flow" or heightened productivity, and how to change behaviors by creating incentives.

What is "Time Boxing?" How can you use it in Phase 0?

Time boxing is setting aside a pre-determined period of time to focus on a specific task. This can be useful for self managing your time by making sure you don't excessively focus on one area to the expense of others. It also offers ready made opportunities for reflection and is a useful framework for pair programming.

How do you manage your time currently?

Aside from using a calendar app and Evernote to track meetings and to-dos, I informally set aside blocks of time during the day to focus on particular tasks - exercise, studying, etc.

Is your current strategy working? If not, why not? Can/will you employ any of them? If so, how?

It works OK but I could be more disciplined about focus. I actually downloaded a pomodoro timing app a few weeks back but haven't used it, so I'll start by giving pomodoro time a try for coding tasks.

What is your overall plan for Phase 0 time management?

I'll use my existing practices to track tasks and meetings since these are mostly effective. I'll augment those with new tools to improve focus and reflection, e.g. time boxing and meditation.

# 1.2 The Command Line Reflection

1. What is a shell? What is "bash?"

A shell is the program you use to interface with the operating system. Bash is one of the most popular Unix command-line shells.

2. What was the most challenging for you in going through this material?

I have spent a lot of time playing around in Terminal.app and on Unix-based BBSes in the 90s before that so I was already familiar with a lot of the material. The most challenging aspect was identifying areas where my existing knowledge was lacking or incorrect, so I can be sure to be on the right path going forward.

3. Were you able to successfully use all of the commands?

Yes.

4. In your opinion, what are the most important commands and arguments to know?

I think it is critical to understand the commands for interacting with the directory structure and files (eg. cd, pwd, rm, ls, less) since it is difficult to get anything else done without these. Among these it is most important to understand rm since you can seriously break things if it is used improperly.

5. Can you remember what each of the following does of the top of your head? Write what each does.

-pwd

Print working directory

-ls

List files in a directory

-mv

Move file

-cd

Change directory

-../

Previous directory in path

-touch

Create file

-mkdir

Create directory

-less

Pager (scrollable text reader)

-rmdir

Remove directory

-rm

Remove file

-help

Get help

# 1.4 Forking and Cloning Reflection

If you were going to write instructions for a new person on how to create a new repo, fork a repo, and clone a repo, what would they be? Why would you fork a repository as opposed to create a new one?

To create a repo: log into Github, click the + icon at the top right, and select "Create repository."

To fork a repo: log into Github, navigate to the desired repo on your web browser, and click "Fork" on the top right of the window.

To clone a repo:

- go to the repo on github.com and copy the https clone URL from the right column

- open Terminal.app, navigate to the directory where you want the cloned repo to go, and enter "git clone <pasted clone URL from above>

Why would you fork a repository as opposed to create a new one? Forking an existing repository gives you your own set of all the files from that repository, whereas creating a new repository gives you an empty repo to start a new project.

What struggles did you have setting up git and GitHub? What did you learn in the process?

The only thing I struggled with a bit was understanding the difference between the local copy of the repo and the master version stored on Github. I initially worried that deleting the local repo directory would mess up the master repo on Github, which it did not. As a result I learned that Git does not work like other cloud services like Dropbox where changes on the local machine are immediately reflected on the server.