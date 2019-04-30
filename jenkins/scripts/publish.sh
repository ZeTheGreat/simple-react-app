echo 'Nesta etapa o Jenkins irá publicar o código na branch "prod" do repositório no Github '


set -x
git commit -m "first commit from jenkins"
git config user.email alexisdrops@gmail.com
git config user.name alexislopes
git checkout develop
git pull origin develop
git add .
git commit -m "second commit from jenkins"
git push origin develop
