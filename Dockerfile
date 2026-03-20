FROM python:3.11-slim
RUN pip install zotero-mcp
CMD zotero-mcp --transport sse
