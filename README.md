# vanilla-forums-docker

vanilla forumsをdocker compose化

## 動作方法

1. `make build` を実行し、コンテナを作成する

2. `make start` を実行し、アプリケーションを起動する

3. `http://locahost/vanillaforums` にアクセスする

4. 以下の情報を入力し、インストーラを完了する

   - Database Host: db
   - Database Name: vanillaforums
   - Database User: root
   - Database Password: vanillaforums
   - その他adminアカウントなどの情報は適当に。


   
