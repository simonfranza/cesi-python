# Django template

Start the project :
```
docker-compose up
```

The project can be accessed on http://localhost:8000/

> On the first start, Django might not be able to connect to PostgreSQL
> You can restart the project once PostgreSQL is initialized to fix it

Apply the migrations :
```
docker-compose run --rm python python manage.py migrate
```
