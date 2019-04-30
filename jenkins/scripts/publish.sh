echo 'Nesta etapa o Jenkins irá publicar o código na branch "prod" do repositório no Github'


set -x
echo 'set email'
git remote add origin https://github.com/alexislopes/simple-react-app.git
git config user.email alexisdrops@gmail.com
echo 'set user'
git config user.name alexislopes
echo 'go to develop'
git checkout develop
echo 'merge from master'
git merge origin/master
git push origin develop
