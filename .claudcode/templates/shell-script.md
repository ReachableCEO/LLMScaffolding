# Shell Script Generation Template

## Instructions
When generating shell scripts, follow these requirements:

### Header Requirements
- Add ReachableCEO Enterprises 2025 copyright header
- Include verbose AGPL v3.0 license header
- Add script description and usage information

### Code Standards
- Use bash strict mode (set -euo pipefail)
- Format functions with blank lines around curly brackets
- Add robust error handling with trap for cleanup
- Check return values of all commands
- Use shellcheck-compliant syntax

### Output and Logging
- Print status messages with [INFO] and [ERROR] prefixes
- Colorize output (green for info, red for errors)
- Log all output to timestamped log file
- Format: LOG-(ScriptName)-MM-DD-YYYY-HH-MM-SS.log
- Include timestamps in MM-DD-YYYY-HH-MM-SS format

### File Generation
- Prompt for script name value
- Generate script file: (ScriptName)-Script-MM-DD-YYYY-HH-MM-SS.sh
- Create git commit message file: (ScriptName)-GitMsg-MM-DD-YYYY-HH-MM-SS.txt
- Generate test suite: (ScriptName)-TestSuite-MM-DD-YYYY-HH-MM-SS.sh
- Provide git add && git commit && git push command

### Code Structure
```bash
#!/bin/bash
# Copyright ReachableCEO Enterprises 2025
# Licensed under AGPL v3.0

# [Script description]
# Usage: [usage information]

set -euo pipefail

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Logging setup
LOG_FILE="LOG-$(basename "$0" .sh)-$(date +%m-%d-%Y-%H-%M-%S).log"

# Function template
function example_function() {

    # Function implementation
    echo -e "${GREEN}[INFO]${NC} Function started" | tee -a "$LOG_FILE"
    
}

# Error handling
trap 'echo -e "${RED}[ERROR]${NC} Script failed at line $LINENO" | tee -a "$LOG_FILE"' ERR

# Main script logic
main() {

    echo -e "${GREEN}[INFO]${NC} Script started at $(date +%m-%d-%Y-%H-%M-%S)" | tee -a "$LOG_FILE"
    # Implementation here
    echo -e "${GREEN}[INFO]${NC} Script completed at $(date +%m-%d-%Y-%H-%M-%S)" | tee -a "$LOG_FILE"
    
}

main "$@"
```