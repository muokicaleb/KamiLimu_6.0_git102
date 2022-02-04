KamiLimu Web-Dev Git 102


## Introduction.
You've recently joined NotACompany LTD as a Web Developer. Your first task is to add your details in the about us section of the website.

To complete the task follow the following 8 steps.
#### Step 1. Create a Fork of the original repository.

> A GitHub fork is a copy of a repository (repo) that sits in your account rather than the account from which you forked the data. Once you have forked a repo, you own your forked copy. This means that you can edit the contents of your forked repository without impacting the parent repo. ~ earthdatascience.org



![git-fork-emphasis.png](./_resources/24f5a598303945f5921ef61b2f029b39.png)

In our case, the central/original repo is  [https://github.com/muokicaleb/KamiLimu_6.0_git102](https://github.com/muokicaleb/KamiLimu_6.0_git102 ) 
To fork click the fork button on the upper right corner.


![screenshot_52.png](./_resources/7110a4f7310142c98480dada874d6fa9.png)

This is how it looks while forking.


![screenshot_53.png](./_resources/25a9d4422e6f478aadef2881a427a181.png)

After it completes it will look like this. 


![screenshot_54.png](./_resources/93847953dc284e50838e0c4c4514a9b0.png)

At this point, you have a copy of the project and can continue using our copy.

#### Step 2. Clone the repo.
> When you create a repository on GitHub.com, it exists as a remote repository. You can clone your repository to create a local copy on your computer and sync between the two locations. ~ https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository

The repo we forked is on github.com (remote server) to get it to our local machine we need to clone it. 
To clone:
i. Copy the git by clicking the green `code` button.



![screenshot_55.png](./_resources/31186aa006624616bbda8599a060c747.png)

ii. Open a terminal where you want your project repo to be and enter the following command.
```git clone <git repo url>```

![screenshot_56.png](./_resources/1c43d76fba1d4ab89986108c2003e5da.png)
 iii. `cd` into the directory.
 

![screenshot_57.png](./_resources/7d1f7bc9a65e497ca0e09199e1f17e1b.png)
#### Step 3. Create a branch
A git branch is a new/separate version of the main repo. A git branch allows developers to diverge from the main version of the code to fix a bug or add a feature.


![images.png](./_resources/cbc8b1d795eb4eb1b310c9357c32b6bd.png)

In our situation, we currently have a main branch and need to create another branch to make our changes.
To branch open terminal in the project directory and enter 
```git checkout -b <branch name>	```


![screenshot_58.png](./_resources/f3913ee48f8a417988ad09b22ef24b19.png)
The changes made in the new branch will not affect the main branch.

#### Step 4. Make changes and commit changes.
Open IDE of choice and make changes needed.


![screenshot_59.png](./_resources/4bf89ca4a4ae4ef08376a95d10c4f1fe.png)

- Make changes.

![screenshot_60.png](./_resources/320cc097f8ba4956b5eeeacf728f8ca2.png)\

- Add changes 
```git add ./index.html```


![screenshot_61.png](./_resources/d194bd65ff8c4b35a78fa736d96692b9.png)


- Commit changes 
```git commit  ```


![screenshot_62.png](./_resources/96e155ac9d334a1d9fd3234c55af3e56.png)

#### Step 5. Push changes
Git push entails moving your code from your local machine to the remote git server (https://github.com)
When pushing it is important to specify the remote server you are pushing to and the branch.
to push
```git push <remote> <branch>```

![screenshot_63.png](./_resources/769b56a05bb24ced90f06533e62f55e4.png)

#### Step 6. Create a pull request.
If you go to the project repo you'll find a `compare & pull request` notification.


![screenshot_64.png](./_resources/f3a9b2381c6a454b9a65cd2696347d04.png)

Click the `Compare & pull request` button.


![screenshot_65.png](./_resources/012fb2632f0e42859a05abb8fca79ea3.png)
On this page, you can specify where to merge to, the reviewers, and the pull request message.
once satisfied with the changes you can click on `create pull request`.


![screenshot_67.png](./_resources/731def0e63da4a328aa80c84c4460726.png)

#### Step 7. Review PR
As the owner of the project or a contributor, you can review and approve pull requests.
To review pull requests click on `Pull request` in the navigation tab and select the PR you want to review.


![screenshot_68.png](./_resources/604b8b8568604381b04f9edd927281d0.png)


![screenshot_69.png](./_resources/47e174c77091489bb6c4a193631fd8f6.png)
You take a look at the commits & files then either comment, approve or request changes. 


![screenshot_70.png](./_resources/07b48f39def74c4485824dd59283dc74.png)

After approving changes.
you'll be able to merge the changes.


![screenshot_71.png](./_resources/2bdda5a29b1941dda2b23081d0290cef.png)



#### Step 8. Merge &/ Rebase
To join the branch we created to the main branch we have three options.


![screenshot_72.png](./_resources/71ba7143e6a74dada73acd0385337d45.png)


1. `Create a merge commit` - All commits from this branch will be added to the base branch via a merge commit.
2. `Squash and merge` - The 1 commit from this branch will be added to the base branch.
3. `Rebase and merge` - The 1commit from this branch will be rebased and added to the base branch

see - [link](https://rietta.com/blog/github-merge-types/)

**Note:** The difference between merging and rebase is:
- If you are merging main into the feature branch, Merge creates a new "merge commit" in the feature branch that ties together the histories of both branches, giving you a branch that looks like.


![02 Merging main into the feature branh.svg](./_resources/57161c9dd3474a0e8274e7ecebc46631.svg)


- If you are rebasing the feature branch onto the main, the entire feature branch is moved to begin the tip of the main branch, this incorporating all of the new commits in the main. But, instead of using a merge commit, rebasing re-writes the project history by creating brand new commits for each commit in the original branch.



![03 Rebasing the feature branch into main.svg](./_resources/8583162350b741eca2afa68c74aafc1d.svg)

In our case, we will be using `Squash and merge`. 


![screenshot_73.png](./_resources/80641895a58547a5b8d9755613f0396d.png)



![screenshot_74.png](./_resources/6795702f8e7d4e6984ad3daa5f3e1c4f.png)



#### Conclusion.
Congratulations you've successfully git forked, branched, made changes to the code base, submitted a PR, reviewed a PR, and merged it to prod. 
Go you!!!!

#### References.
0.  https://github.com/muokicaleb/KamiLimu_6.0_git102 
1. https://www.earthdatascience.org/workshops/intro-version-control-git/about-works/#:~:text=A%20GitHub%20fork%20is%20a,without%20impacting%20the%20parent%20repo.
2. https://docs.github.com/en/repositories/creating-and-managing-repositories/cloning-a-repository
3. https://www.atlassian.com/git/tutorials/merging-vs-rebasing
4. https://rietta.com/blog/github-merge-types/