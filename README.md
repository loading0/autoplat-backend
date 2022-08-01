
# 接口测试平台后端
# python3。10.5 Django 4.0.4框架

## 系统声明：
---
1.采用Django REST framework编写接口，前端页面采用比较容易上手的vue+elementUI<br>

## 使用方法：
---
### 1.安装Python3环境<br>
### 2.下载代码到本地并解压<br>
### 3.cmd到根目录下安装相关依赖包<br>

```bash
pip install -r requirements.txt<br>
pip install https://github.com/darklow/django-suit/tarball/v2
```
### 4.安装mysql数据库，配置数据库连接，进入api_automation_test/settings.py<br>
```python
DATABASES = {
    'default': {
        # 'ENGINE': 'django.db.backends.sqlite3',
        # 'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    'ENGINE':'django.db.backends.mysql',   # 数据库类型，mysql
    'NAME':'api_test',      # database名
    'USER':'root',        # 登录用户
    'PASSWORD':'root123',    # 登录密码
    'HOST':'47.94.233.53',    # 数据库地址
    'PORT':'3306'       # 数据库端口
  }
}
```
### 5.cmd到根目录下，迁移<br>
```bash
python manage.py makemigrations
```
### 6.创造或修改表结构<br>
```bash
python manage.py migrate 
```
### 7.创建超级用户，用于登录后台管理<br>
```bash
python manage.py createsuperuser
```
### 8.安装VUE环境，下载node.js并配置环境，下载npm包管理器<br>
### 9.cmd进入frontend目录下，运行npm install安装相关依赖包<br>
### 10.打包<br>
```bash
npm run build
```
### 11.运行前端 
npm run serve

### 12.运行启动django服务<br>
```bash
python manage.py runserver
```
### 13.现在就可以访问 http://localhost:8080/login 进行登录， http://127.0.0.1:8000/admin 为后台管理平台<br>

