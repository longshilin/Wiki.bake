#!/bin/bash
#
#  Repository: Wiki
#  Checkout: https://github.com/yilong0722/Wiki.git
#  Branch: master dev
#
# 0. simiki引擎进行本地编译并生成静态文件
# 1. checkout到Wiki-Master项目分支，提交静态页面
# 2. checkout到Wiki-dev项目分支，提交hexo源码
#

# Step 1
cd /d/Wiki
simiki g
echo "[Step 1] hexo引擎已生成本地静态文件"

# Step 2
cd /d/Wiki/output
git checkout master
git commit -a -m "Site updated: `date`"    # Site updated: 2018年08月29日 15:39:17
git push
echo "[Step 2] Wiki站点静态文件已同步到git远程仓库的master分支"

# Step 3
cd /d/Wiki
git checkout dev
git commit -a -m "Site updated: `date`"
git push
echo "[Step 3] Wiki站点源码已同步到git远程仓库的dev分支"