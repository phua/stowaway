# dotfiles

## Install

`$ git clone https://github.com/phua/dotfiles.git /path/to/dotfiles`
or, `$ git clone git@github.com:phua/dotfiles.git /path/to/dotfiles`

<strike>`$ ln -s /path/to/dotfiles/{.[!.]*,*} ~`</strike>

`$ stow -d /path/to/dotfiles -t $HOME bash emacs mail term usenet`
`$ stow -d /path/to/dotfiles -t $XDG_CONFIG_HOME config`
`$ stow -d /path/to/dotfiles -t $XDG_DATA_HOME local/share`

`$ stow -d /path/to/secrets -t $HOME gnupg ssh`
`$ stow -d /path/to/secrets -t $XDG_CONFIG_HOME config`

## Github Basics

Configure git.

`git config --global user.name $USER`
`git config --global user.email $USER@users.noreply.github.com`
`git config --global color.ui auto`

`git config --global sslcainfo ...`
`git config --global autocrlf false`
`git config --global credential.helper 'cache --timeout=900'`

Create repository...

`mkdir -p $REPOSITORY && cd $REPOSITORY`
`git init`
`touch README.md`
`git commit -a -m 'first commit'`

...and push upstream.

`git remote add origin https://github.com/$USER/$REPOSITORY.git`
or, `git remote add origin git@github.com:$USER/$REPOSITORY.git`
`git push -u origin master`

Clone repository...

`git clone https://github.com/$USER/$REPOSITORY.git $REPOSITORY`
or, `git clone git@github.com:$USER/$REPOSITORY.git $REPOSITORY`

...and fork.

`git remote add upstream https://github.com/$USER/$REPOSITORY.git`

Rebase from upstream/master...

<strike>`git fetch upstream && git merge upstream/master && git pull upstream master`
or, `git pull --rebase upstream master`</strike>
`git fetch upstream && git checkout master && git merge upstream/master`

## Git Workflow Commands

Browse...

`git [status|log|show|diff|branch|blame]`

Revert...

`git [reset|checkout|revert]`

Update...

`git [pull|fetch|merge|am]`

Branch...

`git [checkout|branch]`

Commit...

`git commit`

Publish...

`git [push|format-patch|tag]`

Other...

`git [bisect|fsck|gc|grep]`

`gitk`, `git gui`, `git instaweb`

Purging...

`find . -type d -name ".svn" -exec git filter-branch --index-filter 'git rm -r --cached --ignore-unmatch {}' --force HEAD \;`

## References

* [GNU Stow](https://www.gnu.org/software/stow/manual/)
* [Git](https://git-scm.com/doc)
* [GitHub](https://guides.github.com/)
* (https://github.github.com/training-kit/downloads/github-git-cheat-sheet/)
* [Markdown](https://daringfireball.net/projects/markdown/)
