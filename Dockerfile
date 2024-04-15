# FROM public.ecr.aws/lambda/python:3.8
FROM python:3

RUN mkdir -p /app
COPY ./ /app/
COPY ./requirements.txt /app/
# COPY requirements.txt /app/
RUN pip install --no-cache-dir -r /app/requirements.txt
WORKDIR /app
EXPOSE 8080
CMD ["app.py"]
ENTRYPOINT [ "python" ]