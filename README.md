# backup dotfiles with Mackup
### edit config
```bash
nvim ~/.mackup.cfg
mackup backup
python ~/gitpush.py
```

### the auto upload script
gitpush.py
```python
from git import Repo
import os

# code path
dirfile = os.path.abspath('/mnt/c/Users/Daniel/Google Drive/dotfiles')
repo = Repo(dirfile)

g = repo.git
g.add("--all")
g.commit("-m auto update")
g.push()
print("Successful push!")
```
### auto upload my dotfiles
```bash
python ~/gitpush.py
```
