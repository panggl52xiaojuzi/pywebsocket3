FROM python
RUN mkdir -p /app \
    && apt update -y \
    && apt install git -y \
    && cd /app && git clone https://github.com/panggl52xiaojuzi/pywebsocket3.git \
    && cd pywebsocket3/ && python3 setup.py build && python3 setup.py install && cd mod_pywebsocket
WORKDIR /app
EXPOSE 80
RUN echo "python3 /app/pywebsocket3/mod_pywebsocket/standalone.py -p 80 -w /app/pywebsocket3/example/ --log-level debug" > /app/run.sh
CMD ["/bin/sh","run.sh"]
