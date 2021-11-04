alex@alex-NBLK:~/git_project/devops-netology$ mkdir branching
alex@alex-NBLK:~/git_project/devops-netology$ cd branching/
alex@alex-NBLK:~/git_project/devops-netology/branching$ vim merge.sh
alex@alex-NBLK:~/git_project/devops-netology/branching$ vim rebase.sh
alex@alex-NBLK:~/git_project/devops-netology/branching$ cd 
alex@alex-NBLK:~$ cd ./git_project/devops-netology/
alex@alex-NBLK:~/git_project/devops-netology$ gi
ginstall-info       gipddecode          git-shell           
gio                 git                 git-upload-archive  
gio-querymodules    git-receive-pack    git-upload-pack     
alex@alex-NBLK:~/git_project/devops-netology$ git a
add       am        apply     archive   
alex@alex-NBLK:~/git_project/devops-netology$ git a
add       am        apply     archive   
alex@alex-NBLK:~/git_project/devops-netology$ git add /
fatal: /: «/» вне репозитория
alex@alex-NBLK:~/git_project/devops-netology$ git add .
alex@alex-NBLK:~/git_project/devops-netology$ git
git                 git-shell           git-upload-pack     
git-receive-pack    git-upload-archive  
alex@alex-NBLK:~/git_project/devops-netology$ git co
commit   config   
alex@alex-NBLK:~/git_project/devops-netology$ cd branching/
alex@alex-NBLK:~/git_project/devops-netology/branching$ git add .
alex@alex-NBLK:~/git_project/devops-netology/branching$ git status 
На ветке fix
Ваша ветка обновлена в соответствии с «origin/fix».

Изменения, которые будут включены в коммит:
  (используйте «git restore --staged <файл>…», чтобы убрать из индекса)
	новый файл:    merge.sh
	новый файл:    rebase.sh

alex@alex-NBLK:~/git_project/devops-netology/branching$ cd /home/alex/git_project/devops-netology/
alex@alex-NBLK:~/git_project/devops-netology$ git status 
На ветке fix
Ваша ветка обновлена в соответствии с «origin/fix».

Изменения, которые будут включены в коммит:
  (используйте «git restore --staged <файл>…», чтобы убрать из индекса)
	новый файл:    branching/merge.sh
	новый файл:    branching/rebase.sh

alex@alex-NBLK:~/git_project/devops-netology$ git co
commit   config   
alex@alex-NBLK:~/git_project/devops-netology$ git co
commit   config   
alex@alex-NBLK:~/git_project/devops-netology$ git commit -m "prepare for merge and rebase"
[fix 9f23e04] prepare for merge and rebase
 2 files changed, 16 insertions(+)
 create mode 100644 branching/merge.sh
 create mode 100644 branching/rebase.sh
alex@alex-NBLK:~/git_project/devops-netology$ gi
ginstall-info       gipddecode          git-shell           
gio                 git                 git-upload-archive  
gio-querymodules    git-receive-pack    git-upload-pack     
alex@alex-NBLK:~/git_project/devops-netology$ git checkout -b git-merge
Переключено на новую ветку «git-merge»
alex@alex-NBLK:~/git_project/devops-netology$ vim ./merge.sh
branching/           .gitignore           terraform/           will_be_moved.txt
.git/                README.md            Will_be_deleted.txt  
alex@alex-NBLK:~/git_project/devops-netology$ vim ./branching/merge.sh
alex@alex-NBLK:~/git_project/devops-netology$ git status 
На ветке git-merge
Изменения, которые не в индексе для коммита:
  (используйте «git add <файл>…», чтобы добавить файл в индекс)
  (используйте «git restore <файл>…», чтобы отменить изменения в рабочем каталоге)
	изменено:      branching/merge.sh

нет изменений добавленных для коммита
(используйте «git add» и/или «git commit -a»)
alex@alex-NBLK:~/git_project/devops-netology$ git add .
alex@alex-NBLK:~/git_project/devops-netology$ git commit -m "merge: @ instead *"
[git-merge 645136a] merge: @ instead *
 1 file changed, 3 insertions(+), 3 deletions(-)
alex@alex-NBLK:~/git_project/devops-netology$ vim ./branching/merge.sh
alex@alex-NBLK:~/git_project/devops-netology$ git add .
alex@alex-NBLK:~/git_project/devops-netology$ git commit -m "use shift"
[git-merge db791a8] use shift
 1 file changed, 3 insertions(+), 2 deletions(-)
alex@alex-NBLK:~/git_project/devops-netology$ git checkout main 
Переключено на ветку «main»
Ваша ветка обновлена в соответствии с «bitbucket-ssh/main».
alex@alex-NBLK:~/git_project/devops-netology$ vim ./branching/rebase.sh
alex@alex-NBLK:~/git_project/devops-netology$ mc

alex@alex-NBLK:~/git_project/devops-netology$ vim ./branching/rebase.sh
alex@alex-NBLK:~/git_project/devops-netology$ git checkout git-merge
Переключено на ветку «git-merge»
alex@alex-NBLK:~/git_project/devops-netology$ vim ./branching/rebase.sh
alex@alex-NBLK:~/git_project/devops-netology$ git merge fix 
Уже обновлено.
alex@alex-NBLK:~/git_project/devops-netology$ git checkout main 
Переключено на ветку «main»
Ваша ветка обновлена в соответствии с «bitbucket-ssh/main».
alex@alex-NBLK:~/git_project/devops-netology$ git merge fix 
Merge made by the 'recursive' strategy.
 README.md           | 7 ++++++-
 branching/merge.sh  | 8 ++++++++
 branching/rebase.sh | 8 ++++++++
 3 files changed, 22 insertions(+), 1 deletion(-)
 create mode 100644 branching/merge.sh
 create mode 100644 branching/rebase.sh
alex@alex-NBLK:~/git_project/devops-netology$ vim ./branching/rebase.sh
alex@alex-NBLK:~/git_project/devops-netology$ vim ./branching/rebase.sh
alex@alex-NBLK:~/git_project/devops-netology$ git add .
alex@alex-NBLK:~/git_project/devops-netology$ git commit
Отмена коммита из-за пустого сообщения коммита.
alex@alex-NBLK:~/git_project/devops-netology$ git commit
Отмена коммита из-за пустого сообщения коммита.
alex@alex-NBLK:~/git_project/devops-netology$ git merge git-merge
error: Your local changes to the following files would be overwritten by merge:
  branching/rebase.sh
alex@alex-NBLK:~/git_project/devops-netology$ git merge git-merge
error: Your local changes to the following files would be overwritten by merge:
  branching/rebase.sh
alex@alex-NBLK:~/git_project/devops-netology$ git add .
alex@alex-NBLK:~/git_project/devops-netology$ git log
commit 0451970388c819baa23fbefd8c0bc5613422522e (HEAD -> main)
Merge: 09115ea 9f23e04
Author: Alexander Bratashov <bratashov.a@dobrozaim.ru>
Date:   Thu Nov 4 07:40:48 2021 +0400

    Merge branch 'fix' into main

commit 9f23e044655c033e9297cf6c56ee115fd0b296c7 (fix)
Author: Alexander Bratashov <bratashov.a@dobrozaim.ru>
Date:   Thu Nov 4 06:58:59 2021 +0400

    prepare for merge and rebase

commit 54ac7de6ba7f37de6e0ad76550e4c62bb536efe5 (origin/fix)
Author: Alexander Bratashov <bratashov.a@dobrozaim.ru>
Date:   Tue Nov 2 21:29:06 2021 +0400

    fix

commit 09115ea7e8759be6d99080b98d7f96d342c4eab7 (tag: v0.1, tag: v0.0, origin/main, origin/HEAD, gitlab/main, gitlab-ssh/main, bitbucket-ssh/main)
Author: Alexander Bratashov <bratashov.a@dobrozaim.ru>
Date:   Sat Oct 30 20:54:22 2021 +0400

    Moved and deleted

commit d4f803468d2c28df4f7023a9d85ccaf0c08ae6c4
Author: Alexander Bratashov <bratashov.a@dobrozaim.ru>
Date:   Sat Oct 30 20:49:26 2021 +0400

    Prepare to delete and move

commit 065ce4eb12c8bb0c9cf33cdf0007e66483a69fe4
Author: Alexander Bratashov <bratashov.a@dobrozaim.ru>
Date:   Sat Oct 30 20:41:20 2021 +0400

    Added gitignore

commit 780ca88c7e8584e7584bbd916bc2f0e78af0dc24
Author: Alexander Bratashov <bratashov.a@dobrozaim.ru>
Date:   Sat Oct 30 14:53:54 2021 +0400

    First commit

commit 085a872600f867157ae0a53ceee422933e7e76b6
Author: hourer <65707169+hourer@users.noreply.github.com>
Date:   Wed Oct 27 21:46:20 2021 +0400

    Initial commit
alex@alex-NBLK:~/git_project/devops-netology$ git log -a
commit 0451970388c819baa23fbefd8c0bc5613422522e (HEAD -> main)
Merge: 09115ea 9f23e04
Author: Alexander Bratashov <bratashov.a@dobrozaim.ru>
Date:   Thu Nov 4 07:40:48 2021 +0400

    Merge branch 'fix' into main

commit 9f23e044655c033e9297cf6c56ee115fd0b296c7 (fix)
Author: Alexander Bratashov <bratashov.a@dobrozaim.ru>
Date:   Thu Nov 4 06:58:59 2021 +0400

    prepare for merge and rebase

commit 54ac7de6ba7f37de6e0ad76550e4c62bb536efe5 (origin/fix)
Author: Alexander Bratashov <bratashov.a@dobrozaim.ru>
Date:   Tue Nov 2 21:29:06 2021 +0400

    fix

commit 09115ea7e8759be6d99080b98d7f96d342c4eab7 (tag: v0.1, tag: v0.0, origin/main, origin/HEAD, gitlab/main, gitlab-ssh/main, bitbucket-ssh/main)
Author: Alexander Bratashov <bratashov.a@dobrozaim.ru>
Date:   Sat Oct 30 20:54:22 2021 +0400

    Moved and deleted

commit d4f803468d2c28df4f7023a9d85ccaf0c08ae6c4
Author: Alexander Bratashov <bratashov.a@dobrozaim.ru>
Date:   Sat Oct 30 20:49:26 2021 +0400

    Prepare to delete and move

commit 065ce4eb12c8bb0c9cf33cdf0007e66483a69fe4
Author: Alexander Bratashov <bratashov.a@dobrozaim.ru>
Date:   Sat Oct 30 20:41:20 2021 +0400

    Added gitignore

commit 780ca88c7e8584e7584bbd916bc2f0e78af0dc24
Author: Alexander Bratashov <bratashov.a@dobrozaim.ru>
Date:   Sat Oct 30 14:53:54 2021 +0400

    First commit

commit 085a872600f867157ae0a53ceee422933e7e76b6
Author: hourer <65707169+hourer@users.noreply.github.com>
Date:   Wed Oct 27 21:46:20 2021 +0400

    Initial commit
alex@alex-NBLK:~/git_project/devops-netology$ git log  | grep prepare for merge and rebase
grep: for: Нет такого файла или каталога
grep: merge: Нет такого файла или каталога
grep: and: Нет такого файла или каталога
grep: rebase: Нет такого файла или каталога
alex@alex-NBLK:~/git_project/devops-netology$ git log --help

alex@alex-NBLK:~/git_project/devops-netology$ git log --
Display all 115 possibilities? (y or n)
alex@alex-NBLK:~/git_project/devops-netology$ git log --oneline 
0451970 (HEAD -> main) Merge branch 'fix' into main
9f23e04 (fix) prepare for merge and rebase
54ac7de (origin/fix) fix
09115ea (tag: v0.1, tag: v0.0, origin/main, origin/HEAD, gitlab/main, gitlab-ssh/main, bitbucket-ssh/main) Moved and deleted
d4f8034 Prepare to delete and move
065ce4e Added gitignore
780ca88 First commit
085a872 Initial commit
alex@alex-NBLK:~/git_project/devops-netology$ git checkout 9f23e04
M	branching/rebase.sh
Note: switching to '9f23e04'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by switching back to a branch.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -c with the switch command. Example:

  git switch -c <new-branch-name>

Or undo this operation with:

  git switch -

Turn off this advice by setting config variable advice.detachedHead to false

HEAD сейчас на 9f23e04 prepare for merge and rebase
alex@alex-NBLK:~/git_project/devops-netology$ git branch git-rebase
alex@alex-NBLK:~/git_project/devops-netology$ vim ./branching/rebase.sh
alex@alex-NBLK:~/git_project/devops-netology$ git checkout  git-rebase
M	branching/rebase.sh
Переключено на ветку «git-rebase»
alex@alex-NBLK:~/git_project/devops-netology$ vim ./branching/rebase.sh
alex@alex-NBLK:~/git_project/devops-netology$ git add .
alex@alex-NBLK:~/git_project/devops-netology$ git commit -m "git-rebase 1"
[git-rebase b3d9abd] git-rebase 1
 1 file changed, 5 insertions(+), 3 deletions(-)
alex@alex-NBLK:~/git_project/devops-netology$ vim ./branching/rebase.sh
alex@alex-NBLK:~/git_project/devops-netology$ git add .
alex@alex-NBLK:~/git_project/devops-netology$ git commit -m "git-rebase 2"
[git-rebase 12d880d] git-rebase 2
 1 file changed, 1 insertion(+), 1 deletion(-)
alex@alex-NBLK:~/git_project/devops-netology$ git merge
fatal: У текущей ветки нет внешнего репозитория.
alex@alex-NBLK:~/git_project/devops-netology$ git remote -v
bitbucket	https://hourer@bitbucket.org/hourer/devops-netology.git (fetch)
bitbucket	https://hourer@bitbucket.org/hourer/devops-netology.git (push)
bitbucket-ssh	git@bitbucket.org:hourer/devops-netology.git (fetch)
bitbucket-ssh	git@bitbucket.org:hourer/devops-netology.git (push)
gitlab	https://gitlab.com/hourer/devops-netology.git (fetch)
gitlab	https://gitlab.com/hourer/devops-netology.git (push)
gitlab-ssh	git@gitlab.com:hourer/devops-netology.git (fetch)
gitlab-ssh	git@gitlab.com:hourer/devops-netology.git (push)
origin	git@github.com:hourer/devops-netology (fetch)
origin	git@github.com:hourer/devops-netology (push)
alex@alex-NBLK:~/git_project/devops-netology$ git merge 
bitbucket-ssh/main   gitlab-ssh/main      main                 origin/main 
FETCH_HEAD           git-merge            ORIG_HEAD            v0.0 
fix                  git-rebase           origin/fix           v0.1 
gitlab/main          HEAD                 origin/HEAD          
alex@alex-NBLK:~/git_project/devops-netology$ git merge /
merge: / — не является тем, что можно слить
alex@alex-NBLK:~/git_project/devops-netology$ git merge .
merge: . — не является тем, что можно слить
alex@alex-NBLK:~/git_project/devops-netology$ git merge --
--abort                       --log                         --squash 
--allow-unrelated-histories   --message=                    --stat 
--cleanup=                    --no-...                      --strategy=
--commit                      --no-verify                   --strategy-option=
--continue                    --overwrite-ignore            --summary 
--edit                        --progress                    --verbose 
--ff                          --quiet                       --verify 
--ff-only                     --quit                        --verify-signatures 
--file                        --rerere-autoupdate           
--gpg-sign                    --signoff                     
alex@alex-NBLK:~/git_project/devops-netology$ git che
checkout      cherry        cherry-pick   
alex@alex-NBLK:~/git_project/devops-netology$ git che
checkout      cherry        cherry-pick   
alex@alex-NBLK:~/git_project/devops-netology$ git checkout 
bitbucket-ssh/main   gitlab-ssh/main      main                 origin/main 
FETCH_HEAD           git-merge            ORIG_HEAD            v0.0 
fix                  git-rebase           origin/fix           v0.1 
gitlab/main          HEAD                 origin/HEAD          
alex@alex-NBLK:~/git_project/devops-netology$ git checkout main
Переключено на ветку «main»
Ваша ветка опережает «bitbucket-ssh/main» на 3 коммита.
  (используйте «git push», чтобы опубликовать ваши локальные коммиты)
alex@alex-NBLK:~/git_project/devops-netology$ git
git                 git-shell           git-upload-pack     
git-receive-pack    git-upload-archive  
alex@alex-NBLK:~/git_project/devops-netology$ git pu
pull   push   
alex@alex-NBLK:~/git_project/devops-netology$ git push 
Перечисление объектов: 13, готово.
Подсчет объектов: 100% (12/12), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (9/9), готово.
Запись объектов: 100% (9/9), 962 байта | 962.00 КиБ/с, готово.
Всего 9 (изменения 4), повторно использовано 0 (изменения 0)
remote: 
remote: Create pull request for main:
remote:   https://bitbucket.org/hourer/devops-netology/pull-requests/new?source=main&t=1
remote: 
To bitbucket.org:hourer/devops-netology.git
   09115ea..0451970  main -> main
alex@alex-NBLK:~/git_project/devops-netology$ git push 
bitbucket       bitbucket-ssh   gitlab          gitlab-ssh      origin 
alex@alex-NBLK:~/git_project/devops-netology$ git push origin 
Перечисление объектов: 8, готово.
Подсчет объектов: 100% (8/8), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (6/6), готово.
Запись объектов: 100% (6/6), 706 байтов | 706.00 КиБ/с, готово.
Всего 6 (изменения 2), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (2/2), completed with 1 local object.
To github.com:hourer/devops-netology
   09115ea..0451970  main -> main
alex@alex-NBLK:~/git_project/devops-netology$ git checkout 
bitbucket-ssh/main   gitlab-ssh/main      main                 origin/main 
FETCH_HEAD           git-merge            ORIG_HEAD            v0.0 
fix                  git-rebase           origin/fix           v0.1 
gitlab/main          HEAD                 origin/HEAD          
alex@alex-NBLK:~/git_project/devops-netology$ git checkout git-merge
Переключено на ветку «git-merge»
alex@alex-NBLK:~/git_project/devops-netology$ git push origin 
fatal: Текущая ветка git-merge не имеет вышестоящей ветки.
Чтобы отправить текущую ветку и установить внешнюю ветку как вышестоящую для этой ветки, используйте

    git push --set-upstream origin git-merge

alex@alex-NBLK:~/git_project/devops-netology$ git push --set-upstream origin git-merge
Перечисление объектов: 11, готово.
Подсчет объектов: 100% (11/11), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (8/8), готово.
Запись объектов: 100% (8/8), 834 байта | 834.00 КиБ/с, готово.
Всего 8 (изменения 3), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (3/3), completed with 2 local objects.
remote: 
remote: Create a pull request for 'git-merge' on GitHub by visiting:
remote:      https://github.com/hourer/devops-netology/pull/new/git-merge
remote: 
To github.com:hourer/devops-netology
 * [new branch]      git-merge -> git-merge
Ветка «git-merge» отслеживает внешнюю ветку «git-merge» из «origin».
alex@alex-NBLK:~/git_project/devops-netology$ git checkout git-
git-merge    git-rebase   
alex@alex-NBLK:~/git_project/devops-netology$ git checkout git-
git-merge    git-rebase   
alex@alex-NBLK:~/git_project/devops-netology$ git checkout git-rebase 
Переключено на ветку «git-rebase»
alex@alex-NBLK:~/git_project/devops-netology$ git push origin
fatal: Текущая ветка git-rebase не имеет вышестоящей ветки.
Чтобы отправить текущую ветку и установить внешнюю ветку как вышестоящую для этой ветки, используйте

    git push --set-upstream origin git-rebase

alex@alex-NBLK:~/git_project/devops-netology$ git push --set-upstream origin git-rebase
Перечисление объектов: 11, готово.
Подсчет объектов: 100% (11/11), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (8/8), готово.
Запись объектов: 100% (8/8), 788 байтов | 788.00 КиБ/с, готово.
Всего 8 (изменения 3), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (3/3), completed with 1 local object.
remote: 
remote: Create a pull request for 'git-rebase' on GitHub by visiting:
remote:      https://github.com/hourer/devops-netology/pull/new/git-rebase
remote: 
To github.com:hourer/devops-netology
 * [new branch]      git-rebase -> git-rebase
Ветка «git-rebase» отслеживает внешнюю ветку «git-rebase» из «origin».
alex@alex-NBLK:~/git_project/devops-netology$ gi
ginstall-info       gipddecode          git-shell           
gio                 git                 git-upload-archive  
gio-querymodules    git-receive-pack    git-upload-pack     
alex@alex-NBLK:~/git_project/devops-netology$ git sta
stage    stash    status   
alex@alex-NBLK:~/git_project/devops-netology$ git status 
branching/           README.md            Will_be_deleted.txt  
.gitignore           terraform/           will_be_moved.txt    
alex@alex-NBLK:~/git_project/devops-netology$ git status 
branching/           README.md            Will_be_deleted.txt  
.gitignore           terraform/           will_be_moved.txt    
alex@alex-NBLK:~/git_project/devops-netology$ git 
add               clean             grep              range-diff        shortlog 
am                clone             gui               rebase            show 
apply             commit            help              reflog            show-branch 
archive           config            init              remote            sparse-checkout 
bisect            describe          instaweb          repack            stage 
blame             diff              log               replace           stash 
branch            difftool          merge             request-pull      status 
bundle            fetch             mergetool         reset             submodule 
checkout          format-patch      mv                restore           switch 
cherry            fsck              notes             revert            tag 
cherry-pick       gc                pull              rm                whatchanged 
citool            gitk              push              send-email        worktree 
alex@alex-NBLK:~/git_project/devops-netology$ git grep 
branching/           .gitignore           terraform/           will_be_moved.txt
.git/                README.md            Will_be_deleted.txt  
alex@alex-NBLK:~/git_project/devops-netology$ git grep 
branching/           .gitignore           terraform/           will_be_moved.txt
.git/                README.md            Will_be_deleted.txt  
alex@alex-NBLK:~/git_project/devops-netology$ git push 
bitbucket       bitbucket-ssh   gitlab          gitlab-ssh      origin 
alex@alex-NBLK:~/git_project/devops-netology$ git push gitlab-ssh
Перечисление объектов: 17, готово.
Подсчет объектов: 100% (17/17), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (15/15), готово.
Запись объектов: 100% (15/15), 1.40 КиБ | 1.40 МиБ/с, готово.
Всего 15 (изменения 6), повторно использовано 0 (изменения 0)
remote: 
remote: To create a merge request for git-rebase, visit:
remote:   https://gitlab.com/hourer/devops-netology/-/merge_requests/new?merge_request%5Bsource_branch%5D=git-rebase
remote: 
To gitlab.com:hourer/devops-netology.git
 * [new branch]      git-rebase -> git-rebase
alex@alex-NBLK:~/git_project/devops-netology$ git che
checkout      cherry        cherry-pick   
alex@alex-NBLK:~/git_project/devops-netology$ git che
checkout      cherry        cherry-pick   
alex@alex-NBLK:~/git_project/devops-netology$ git checkout 
bitbucket-ssh/main      git-merge               origin/git-merge 
FETCH_HEAD              git-rebase              origin/git-rebase 
fix                     HEAD                    origin/HEAD 
gitlab/main             main                    origin/main 
gitlab-ssh/git-rebase   ORIG_HEAD               v0.0 
gitlab-ssh/main         origin/fix              v0.1 
alex@alex-NBLK:~/git_project/devops-netology$ git checkout main 
Переключено на ветку «main»
Ваша ветка обновлена в соответствии с «bitbucket-ssh/main».
alex@alex-NBLK:~/git_project/devops-netology$ git merge git-merge
Merge made by the 'recursive' strategy.
 branching/merge.sh | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)
alex@alex-NBLK:~/git_project/devops-netology$ git push
Перечисление объектов: 16, готово.
Подсчет объектов: 100% (14/14), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (10/10), готово.
Запись объектов: 100% (10/10), 1.06 КиБ | 1.06 МиБ/с, готово.
Всего 10 (изменения 4), повторно использовано 0 (изменения 0)
remote: 
remote: Create pull request for main:
remote:   https://bitbucket.org/hourer/devops-netology/pull-requests/new?source=main&t=1
remote: 
To bitbucket.org:hourer/devops-netology.git
   0451970..12e7c5c  main -> main
alex@alex-NBLK:~/git_project/devops-netology$ git checkout git-rebase 
Переключено на ветку «git-rebase»
Ваша ветка обновлена в соответствии с «origin/git-rebase».
alex@alex-NBLK:~/git_project/devops-netology$ git rebase -i main
Successfully rebased and updated refs/heads/git-rebase.
alex@alex-NBLK:~/git_project/devops-netology$ git add rebase.sh
fatal: спецификатор пути «rebase.sh» не соответствует ни одному файлу
alex@alex-NBLK:~/git_project/devops-netology$ git add ./rebase.sh
branching/          .gitignore          README.md           
.git/               has_been_moved.txt  terraform/          
alex@alex-NBLK:~/git_project/devops-netology$ git add ./branching/rebase.sh
alex@alex-NBLK:~/git_project/devops-netology$ git rebase --continue
fatal: Нет перемещения в процессе?
alex@alex-NBLK:~/git_project/devops-netology$ git push
To github.com:hourer/devops-netology
 ! [rejected]        git-rebase -> git-rebase (non-fast-forward)
error: не удалось отправить некоторые ссылки в «git@github.com:hourer/devops-netology»
подсказка: Обновления были отклонены, так как верхушка вашей текущей ветки
подсказка: позади ее внешней части. Заберите и слейте внешние изменения 
подсказка: (например, с помощью «git pull …») перед повторной попыткой отправки
подсказка: изменений.
подсказка: Для дополнительной информации, смотрите «Note about fast-forwards»
подсказка: в «git push --help».
alex@alex-NBLK:~/git_project/devops-netology$ git pull
Merge made by the 'recursive' strategy.
alex@alex-NBLK:~/git_project/devops-netology$ git push
Перечисление объектов: 19, готово.
Подсчет объектов: 100% (18/18), готово.
При сжатии изменений используется до 8 потоков
Сжатие объектов: 100% (10/10), готово.
Запись объектов: 100% (10/10), 1.09 КиБ | 1.09 МиБ/с, готово.
Всего 10 (изменения 5), повторно использовано 0 (изменения 0)
remote: Resolving deltas: 100% (5/5), completed with 2 local objects.
To github.com:hourer/devops-netology
   12d880d..63cf4ff  git-rebase -> git-rebase
alex@alex-NBLK:~/git_project/devops-netology$ git checkout main
Переключено на ветку «main»
Ваша ветка обновлена в соответствии с «bitbucket-ssh/main».
alex@alex-NBLK:~/git_project/devops-netology$ git merge git-rebase
Обновление 12e7c5c..63cf4ff
Fast-forward
 branching/rebase.sh | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)
alex@alex-NBLK:~/git_project/devops-netology$ 


