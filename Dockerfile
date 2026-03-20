FROM python:3.11-slim
RUN pip install zotero-mcp
EXPOSE 8000
CMD zotero-mcp serve --transport sse --api-key $ZOTERO_API_KEY --library-id $ZOTERO_LIBRARY_ID --port 8000
