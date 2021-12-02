# Assigment 4. Docker

## Part 1. cmake-with-flask
```bash
docker build . -t cmake-with-flask
docker run --publish 5000:5000 cmake-with-flask
```
After the second line it will show a link like on a picture below</br>
![flask_1](img/1.png)
Open link in browser and add `/app` to the pass. `ok` should be shown on a page.</br>
To verify that cmake binary created do:
```bash
docker ps
docker exec CONTAINER_ID /bin/C
```
</br>
Output should be 1:</br>

![flask_2](img/2.png)
