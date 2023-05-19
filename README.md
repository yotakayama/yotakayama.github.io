githubの扱い
git add
git commit
bin/deployかbundle exec jekyll
だが，jekyllをやると，ブランチがsourceからmasterになるので，そこからdeployするときに，masterー＞origin/masterにだしてしまうことになる．それをさけるため，ローカルのmasterブランチだけを消した．


deployする前にgit branch -D masterでmasterを消すというのも手．そうじゃないと，変更が帳消しにされちゃう．