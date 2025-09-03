- URLs:
	-  https://mcpmarket.com/server/joplin
	-  https://github.com/dweigend/joplin-mcp-server

-  Here is the config:
```json
{
  "mcpServers": {
    "joplin": {
      "command":"C:\\Users\\tsys\\.local\\bin\\uv.exe",
      "args": [
        "--directory",
        "E:/tsys/LLM/MCP/joplin-mcp-server",
        "run",
        "src/mcp/joplin_mcp.py"
      ]
    }
  }
}
```

- Status: Configured and deployed in Claude Desktop

Here is the successful execution:

![6e5ad57ec0bb70995a2ab92d65844308.png](../../_resources/6e5ad57ec0bb70995a2ab92d65844308.png)