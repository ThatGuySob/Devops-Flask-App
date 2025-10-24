FROM python:3.14-slim

WORKDIR /usr/src/app

COPY Deploy.sh .

RUN chmod +x ./Deploy.sh

RUN pip install flask redis

EXPOSE 5000

CMD ["sh", "Deploy.sh"]