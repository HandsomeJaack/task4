FROM ubuntu:20.04

EXPOSE 5000

COPY ./task6/cmake-with-flask /
RUN apt-get update
RUN apt-get install -y make cmake g++-10 python3 python3-pip --no-install-recommends tzdata
RUN pip3 install flask
RUN cmake -D CMAKE_CXX_COMPILER=g++-10 -D CMAKE_C_COMPILER=gcc-10 && make
RUN useradd -m techproguser

ENTRYPOINT [ "python3", "app.py", "--port", "5000", "--host", "0.0.0.0"]
