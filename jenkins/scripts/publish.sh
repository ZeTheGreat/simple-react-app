echo 'Nesta etapa o Jenkins irá publicar o código na branch "prod" do repositório no Github'


set -x
git config user.email alexisdrops@gmail.com
git config user.name alexislopes
git checkout develop
git merge origin/master
git remote set-url origin git@github.com:alexislopes/simple-react-app
git push origin develop
