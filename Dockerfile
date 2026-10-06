FROM python:3.11-slim
WORKDIR /site
COPY index.html ./
USER 1000:1000
EXPOSE 3000
CMD ["python", "-m", "http.server", "3000", "--bind", "0.0.0.0", "--directory", "/site"]
