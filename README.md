githubの扱い
current branch source
git add .
git commit -am ""
bin/deploy -d master -s sourceかbundle exec jekyll serve
だが，jekyllをやると，ブランチがsourceからmasterになるので，そこからdeployするときに，masterー＞origin/masterにだしてしまうことになる．それをさけるため，ローカルのmasterブランチだけを消した．
(deployは違うフォルダに対して行わなければならないよう)



source(.githubなどのファイル存在する)をdeployして、originのmasterに入る。deployがうまくいけば、終わった後はsourceにbranchが戻っているはずである。
(origin/masterはlocalであることに注意）

事故的にディレクトリを作成したら、git fetch -pをして消せる。

git checkout source, git merge master はしないこと。これをやると、.deployなどのファイルが消える。もししてしまったら、git reset --hard ...


gem のファイルがないよと言われたら、xcodeがアップロードされてない可能性がある。


portが埋まってしまったら、killをするわけだが、ps -ax | grep 127.0.0.1:4000

git branch -D