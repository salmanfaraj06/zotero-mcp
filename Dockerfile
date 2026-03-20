FROM python:3.11-slim
RUN pip install zotero-mcp
COPY run.py /run.py
EXPOSE 8000
CMD ["python", "/run.py"]
