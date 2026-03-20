FROM python:3.11-slim
RUN pip install zotero-mcp-server
EXPOSE 8000
CMD zotero-mcp serve --transport sse --host 0.0.0.0
