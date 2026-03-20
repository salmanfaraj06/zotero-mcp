import uvicorn, sys

_orig = uvicorn.run
def patched_run(app, **kwargs):
    kwargs['host'] = '0.0.0.0'
    return _orig(app, **kwargs)
uvicorn.run = patched_run

sys.argv = ['zotero-mcp', '--transport', 'sse']
from importlib.metadata import entry_points
for ep in entry_points(group='console_scripts'):
    if ep.name == 'zotero-mcp':
        ep.load()()
        break
