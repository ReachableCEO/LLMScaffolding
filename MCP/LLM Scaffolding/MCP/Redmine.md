Redmine

- URL: https://github.com/runekaagaard/mcp-redmine
- Status: Configured and deployed in Claude Desktop
  
- Here is the config:
  ```json
   "redmine": {
      "command": "uvx",
      "args": ["--from", "mcp-redmine==2025.04.09.153531", 
               "--refresh-package", "mcp-redmine", "mcp-redmine"],
      "env": {
        "REDMINE_URL": "https://projects.knownelement.com",
        "REDMINE_API_KEY": "[redacted]",
        "REDMINE_REQUEST_INSTRUCTIONS": "E:/tsys/LLM/MCP/redmine-mcp-server/instructions.md"
      }
    }
	```

	 