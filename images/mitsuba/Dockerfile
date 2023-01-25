#FROM python:3.12.0a3-bullseye
FROM python:3.11.1

RUN apt-get update && apt-get --yes install llvm

RUN pip install mitsuba
RUN pip install numpy


#FROM ninjaben/mitsuba-rgb:latest
#RUN sudo apt update && sudo apt --yes install python3-pip
#RUN sudo pip3 install --upgrade pip3 -i https://pypi.python.org/simple

