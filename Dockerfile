FROM python:3.9

ADD ./ /home/root/

ADD ./test/fixtures/git_config_global /etc/gitconfig

RUN python3 -m venv /home/root/test-env

RUN /home/root/test-env/bin/python3 -m pip install --upgrade pip && \
    /home/root/test-env/bin/python3 -m pip install -r /home/root/requirements.txt && \
    /home/root/test-env/bin/python3 -m pip install -r /home/root/requirements-dev.txt

WORKDIR /home/root/
