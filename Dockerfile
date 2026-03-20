FROM python:3.11-slim
RUN pip install zotero-mcp
EXPOSE 8000
CMD zotero-mcp --transport sse
