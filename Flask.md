Locally:

- Virtual environment init
`python -m venv venv/`

- Activate virtual environment on Windows:
`.\venv\scripts\activate`

- Install flask and gunicorn library
`pip install flask`
`pip install gunicorn`

- Reference all libraries in text file
`pip freeze > requirements.txt`

- Create file with name "Procfile" and add this line:
`web: gunicorn app:app`

- Repo init, add and commit

Heroku:

- create app

Locally:

- Login to heroku
`heroku login`

- Connect repo to the heroku app
`heroku git:remote -a your-project-name`

- Push code up
`git push heroku master`