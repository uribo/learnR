@cd /d %~dp0
@rscript publish.R
@cd _book
@git init
@git add .
@git commit --allow-empty -m "Update built gitbook"
@git checkout -b gh-pages
@git push git@github.com:renkun-ken/learnR.git gh-pages --force
@git checkout master
@git branch -D gh-pages
@cd ..