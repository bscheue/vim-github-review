# vim-github-review
Load GitHub PR review comments to Vim's quickfix list

## Installation
Using your plugin / runtimepath manager of choice. If you're using a newer
version of vim, you can use Vim's built-in runtimepath manager
(see `:help packages`).

If your method of installation doesn't index the documentation for you,
run `:helptags ~/.vim/doc`.

To view the helpfile for this plugin, run `:help github-review`.

## Usage
Run `:LoadGithubReviewComments` to populate the quickfix list with review comments
for the PR associated with the current branch and open the quickfix window.

## Dependencies
This plugin requires that [GitHub CLI](https://cli.github.com/) is installed.
