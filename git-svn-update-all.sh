#!/bin/bash
# script to update git to the svn repository in every branch

# First, stash all
echo " ============= Start ============= "
current_branch=$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/')
old_stash=$(git rev-parse -q --verify refs/stash)
echo "old_stash is: $old_stash"
git stash save --all
new_stash=$(git rev-parse -q --verify refs/stash)
echo "new_stash is: $new_stash"

# get all branches' name
for i in $(git branch 2> /dev/null|sed 's/^..\(.*\)/ \1/')
do
	echo "checking out branch $i"
	git checkout "$i"
	# make every branch based on the tip of the svn one
	echo "svn rebasing"
	git svn rebase
done
git checkout "$current_branch"
# If there were no changes, no stash is popped
if [ "$old_stash" = "$new_stash" ]; then
	echo "no stash"
else
	git stash pop
fi

echo " ============= End ============= "
