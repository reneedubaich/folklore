# Meeting Notes

**01/26/2024**

## Setting up our Git Repo

- As of now, all of you should have Git installed on your computer. Do we all have macs?
    - To check this, type “git version” in terminal, something like `git version 2.39.2 (Apple Git-143)` should come up
### Creating SSH key
- if at anytime in these steps it asks you something like yes / no, just type yes
    - type in terminal:
        - `ssh-keygen -t ed25519 -C "youremail@pitt.edu"`
            - ^^^ **Be sure your git hub email match the email you type, I use my google email so I use that but if you use pitt, then use pitt**
        - Press Enter
    - Enter a passphrase (anything)
        - when you type this out (a key icon will appear), it will be invisible, so just remember what you type and press enter
    - Type in terminal:
        - `touch ~/.ssh/config`
            - enter, it should just make a new line, nothing else happens
        - `open ~/.ssh/config`
            - enter, a file will open
    - In the file, type or copy and paste
        
        ```
        Host github.com
          AddKeysToAgent yes
          UseKeychain yes
          IdentityFile ~/.ssh/id_ed25519
        ```
        
    - you can close the file
    - Type in terminal
        - `ssh-add --apple-use-keychain ~/.ssh/id_ed25519`
### Now that SSH key is created, add to your GitHub
    - Go to your Github account, under settings, go to “Generate SSH Key”
    - Type `pbcopy < ~/.ssh/id_ed25519.pub`, enter in terminal, nothing will happen (it copies your SSH key to your clipboard)
    - Click Create new SSH key in Github, title it whatever you want, then paste into text box. Then finish adding it.
### Cloning Repo
    - In terminal, type:
        - `git clone git@github.com:reneedubaich/folklore.git`
        - enter, should clone repo and should be successful
    - The repo folder, entitled ‘folklore’, should be someone in your local files. Find where it is. Mine is in my desktop directory.
- When you are working in the repo, and want to add or pull edits, navigate to the directory in your terminal:
    - For me, I first need to go to my desktop, then navigate down the tree to the ‘folklore’ repo:
        - `cd desktop/folklore`
        - It may be under your user directory, in that case type:
        - `cd folklore`
        - It should say you are in the `folklore` repo, as such: `reneedubaich@Renees-MacBook-Air-2 folklore %`
            
    - to know where your repo is located, you can type `pwd` enter and it will tell you the directory.

### Helpful links for troubleshooting:

   - **SSH keys and adding ssh-agent:** https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=mac
   - **Cloning Repo:** https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository?platform=mac&tool=webui
   - **Git Commands Cheat Sheet:** https://github.com/0nn0/git-basics-cheatsheet
   
### How to add, edit, and work in the `folklore` repo:

   - **Before you ever work in the repo, meaning editing or adding a file, you must “pull” first. This means you are checking for other changes your groupmates 
    have made to the repo so you can edit in the most recent updated files. If you do not pull first and start editing, there may be a merge conflict (but sometimes 
    merge conflicts are inevitable)**
   
    - In terminal:
    - `git status` , this will tell you if you are up to date on changes
    - `git pull` , this will “pull” all of the updates made from your groupmates and update your local repo
    - Lets say you are ready to edit things. You create a new xml document, let’s say, and now you want to add it to the repo. This also is the same for if you add any edits to an existing document:
    - `git add filename.xml` , press enter
    - `git commit -m "write a message in these quotes which describe your edits, like added new markup"` , press enter
    - `git push` , this will push these edits to the shared repo