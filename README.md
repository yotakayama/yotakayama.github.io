
**GitHub Workflow Notes**

**Current branch:** `source`

```bash
git add .
git commit -am ""
bin/deploy -d master -s source
# or
bundle exec jekyll serve
```

**Important:** Running Jekyll switches the branch from `source` to `master`. Deploying from there would push `master` → `origin/master` unintentionally. To avoid this, delete the local `master` branch after deploying.
*(Deployment must be run from a different folder.)*

**Deploy flow:**
Deploy from `source` — the output goes into `origin/master`. If deployment succeeds, the branch should automatically return to `source` when done.
*(Note: `origin/master` here refers to a local branch.)*

**Accidentally created a stray branch/directory?**
Run `git fetch -p` to prune it.

**Do NOT run:**
```bash
git checkout source
git merge master
```
This will delete files like `.deploy`. If you accidentally did this, recover with:
```bash
git reset --hard <commit>
```

**Missing gem files?**
Xcode may not be installed or updated. Check your Xcode installation.

**Port 4000 already in use?**
Find and kill the process:
```bash
ps -ax | grep 127.0.0.1:4000
# then kill <PID>
```

**Force delete a local branch:**
```bash
git branch -D <branch-name>
```