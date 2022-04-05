FROM python:3.7.3

RUN apt-get update && apt-get install -y cmake

ENV PYTHONPATH=/usr/src/app/
ENV PATH="$PATH:/root/.local/bin"

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /usr/src/app/

EXPOSE 8080

CMD ["python", "-m", "recipes_manager"]