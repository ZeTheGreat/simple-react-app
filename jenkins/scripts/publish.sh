echo 'Nesta etapa o Jenkins irá publicar o código na branch "prod" do repositório no Github'


set -x
echo 'set email'
git config user.email alexisdrops@gmail.com
echo 'set user'
git config user.name alexislopes
echo 'go to develop'
git checkout develop
git merge origin/master
git remote set-url origin git@github.com:alexislopes/simple-react-app
git push origin develop
