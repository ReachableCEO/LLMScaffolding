#!/bin/bash

# LaunchClaudeCode.sh - A wrapper script for invoking Claude Code with configurable options
# This script provides sensible defaults and easy configuration for all Claude Code CLI options

set -euo pipefail

# =============================================================================
# CONFIGURATION OPTIONS
# =============================================================================

# https://docs.anthropic.com/en/docs/claude-code/cli-reference#add-dir
ADD_DIR=""

# https://docs.anthropic.com/en/docs/claude-code/cli-reference#allowedtools
ALLOWED_TOOLS=""

# https://docs.anthropic.com/en/docs/claude-code/cli-reference#disallowedtools
DISALLOWED_TOOLS=""

# https://docs.anthropic.com/en/docs/claude-code/cli-reference#print
PRINT_MODE=false

# https://docs.anthropic.com/en/docs/claude-code/cli-reference#output-format
OUTPUT_FORMAT="text"  # Options: text, json, stream-json

# https://docs.anthropic.com/en/docs/claude-code/cli-reference#input-format
INPUT_FORMAT="text"   # Options: text, stream-json

# https://docs.anthropic.com/en/docs/claude-code/cli-reference#verbose
VERBOSE=false

# https://docs.anthropic.com/en/docs/claude-code/cli-reference#max-turns
MAX_TURNS=""

# https://docs.anthropic.com/en/docs/claude-code/cli-reference#model
MODEL="sonnet"  # Options: sonnet, opus, or full model name

# https://docs.anthropic.com/en/docs/claude-code/cli-reference#permission-mode
PERMISSION_MODE=""

# https://docs.anthropic.com/en/docs/claude-code/cli-reference#permission-prompt-tool
PERMISSION_PROMPT_TOOL=""

# https://docs.anthropic.com/en/docs/claude-code/cli-reference#resume
RESUME_SESSION=""

# https://docs.anthropic.com/en/docs/claude-code/cli-reference#continue
CONTINUE_SESSION=false

# https://docs.anthropic.com/en/docs/claude-code/cli-reference#dangerously-skip-permissions
SKIP_PERMISSIONS=false

# =============================================================================
# SCRIPT FUNCTIONS
# =============================================================================

show_help() {
    cat << EOF
Usage: $0 [OPTIONS] [QUERY]

A wrapper script for Claude Code CLI with configurable options.

Options:
  -h, --help                    Show this help message
  --add-dir DIR                 Add additional working directory
  --allowed-tools TOOLS         Comma-separated list of tools to allow without prompting
  --disallowed-tools TOOLS      Comma-separated list of tools to disallow without prompting
  -p, --print                   Print response without interactive mode
  --output-format FORMAT        Specify output format (text, json, stream-json)
  --input-format FORMAT         Specify input format (text, stream-json)
  --verbose                     Enable detailed logging
  --max-turns N                 Limit agentic turns in non-interactive mode
  --model MODEL                 Set model for session (sonnet, opus, or full model name)
  --permission-mode MODE        Begin in specified permission mode
  --permission-prompt-tool TOOL Specify MCP tool for permission prompts
  -r, --resume SESSION_ID       Resume specific session
  -c, --continue                Load most recent conversation
  --skip-permissions            Skip permission prompts (dangerous)

Examples:
  $0                           # Start interactive REPL with defaults
  $0 "Write a hello world"     # Start REPL with initial prompt
  $0 -p "What is 2+2?"         # Print response and exit
  $0 -c                        # Continue most recent conversation
  $0 -r session123 "Continue"  # Resume specific session

Environment Variables:
  All configuration options can be overridden by environment variables:
  CLAUDE_ADD_DIR, CLAUDE_ALLOWED_TOOLS, CLAUDE_DISALLOWED_TOOLS, etc.

Documentation:
  https://docs.anthropic.com/en/docs/claude-code/cli-reference
EOF
}

log_info() {
    echo "[INFO] $*" >&2
}

log_error() {
    echo "[ERROR] $*" >&2
    exit 1
}

check_dependencies() {
    if ! command -v claude >/dev/null 2>&1; then
        log_error "Claude Code CLI not found. Please install it first."
    fi
}

build_claude_command() {
    local -a cmd_args=("claude")
    
    # Add optional arguments
    [[ -n "$ADD_DIR" ]] && cmd_args+=("--add-dir" "$ADD_DIR")
    [[ -n "$ALLOWED_TOOLS" ]] && cmd_args+=("--allowedTools" "$ALLOWED_TOOLS")
    [[ -n "$DISALLOWED_TOOLS" ]] && cmd_args+=("--disallowedTools" "$DISALLOWED_TOOLS")
    [[ "$PRINT_MODE" == "true" ]] && cmd_args+=("--print")
    [[ "$OUTPUT_FORMAT" != "text" ]] && cmd_args+=("--output-format" "$OUTPUT_FORMAT")
    [[ "$INPUT_FORMAT" != "text" ]] && cmd_args+=("--input-format" "$INPUT_FORMAT")
    [[ "$VERBOSE" == "true" ]] && cmd_args+=("--verbose")
    [[ -n "$MAX_TURNS" ]] && cmd_args+=("--max-turns" "$MAX_TURNS")
    [[ "$MODEL" != "sonnet" ]] && cmd_args+=("--model" "$MODEL")
    [[ -n "$PERMISSION_MODE" ]] && cmd_args+=("--permission-mode" "$PERMISSION_MODE")
    [[ -n "$PERMISSION_PROMPT_TOOL" ]] && cmd_args+=("--permission-prompt-tool" "$PERMISSION_PROMPT_TOOL")
    [[ -n "$RESUME_SESSION" ]] && cmd_args+=("--resume" "$RESUME_SESSION")
    [[ "$CONTINUE_SESSION" == "true" ]] && cmd_args+=("--continue")
    [[ "$SKIP_PERMISSIONS" == "true" ]] && cmd_args+=("--dangerously-skip-permissions")
    
    # Add any remaining arguments (query)
    cmd_args+=("$@")
    
    printf '%s\n' "${cmd_args[@]}"
}

# =============================================================================
# MAIN SCRIPT
# =============================================================================

main() {
    # Override defaults with environment variables
    ADD_DIR="${CLAUDE_ADD_DIR:-$ADD_DIR}"
    ALLOWED_TOOLS="${CLAUDE_ALLOWED_TOOLS:-$ALLOWED_TOOLS}"
    DISALLOWED_TOOLS="${CLAUDE_DISALLOWED_TOOLS:-$DISALLOWED_TOOLS}"
    PRINT_MODE="${CLAUDE_PRINT_MODE:-$PRINT_MODE}"
    OUTPUT_FORMAT="${CLAUDE_OUTPUT_FORMAT:-$OUTPUT_FORMAT}"
    INPUT_FORMAT="${CLAUDE_INPUT_FORMAT:-$INPUT_FORMAT}"
    VERBOSE="${CLAUDE_VERBOSE:-$VERBOSE}"
    MAX_TURNS="${CLAUDE_MAX_TURNS:-$MAX_TURNS}"
    MODEL="${CLAUDE_MODEL:-$MODEL}"
    PERMISSION_MODE="${CLAUDE_PERMISSION_MODE:-$PERMISSION_MODE}"
    PERMISSION_PROMPT_TOOL="${CLAUDE_PERMISSION_PROMPT_TOOL:-$PERMISSION_PROMPT_TOOL}"
    RESUME_SESSION="${CLAUDE_RESUME_SESSION:-$RESUME_SESSION}"
    CONTINUE_SESSION="${CLAUDE_CONTINUE_SESSION:-$CONTINUE_SESSION}"
    SKIP_PERMISSIONS="${CLAUDE_SKIP_PERMISSIONS:-$SKIP_PERMISSIONS}"
    
    # Parse command line arguments
    while [[ $# -gt 0 ]]; do
        case $1 in
            -h|--help)
                show_help
                exit 0
                ;;
            --add-dir)
                ADD_DIR="$2"
                shift 2
                ;;
            --allowed-tools)
                ALLOWED_TOOLS="$2"
                shift 2
                ;;
            --disallowed-tools)
                DISALLOWED_TOOLS="$2"
                shift 2
                ;;
            -p|--print)
                PRINT_MODE=true
                shift
                ;;
            --output-format)
                OUTPUT_FORMAT="$2"
                shift 2
                ;;
            --input-format)
                INPUT_FORMAT="$2"
                shift 2
                ;;
            --verbose)
                VERBOSE=true
                shift
                ;;
            --max-turns)
                MAX_TURNS="$2"
                shift 2
                ;;
            --model)
                MODEL="$2"
                shift 2
                ;;
            --permission-mode)
                PERMISSION_MODE="$2"
                shift 2
                ;;
            --permission-prompt-tool)
                PERMISSION_PROMPT_TOOL="$2"
                shift 2
                ;;
            -r|--resume)
                RESUME_SESSION="$2"
                shift 2
                ;;
            -c|--continue)
                CONTINUE_SESSION=true
                shift
                ;;
            --skip-permissions)
                SKIP_PERMISSIONS=true
                shift
                ;;
            --)
                shift
                break
                ;;
            -*)
                log_error "Unknown option: $1"
                ;;
            *)
                break
                ;;
        esac
    done
    
    # Check dependencies
    check_dependencies
    
    # Build and execute command
    if [[ "$VERBOSE" == "true" ]]; then
        log_info "Executing: $(build_claude_command "$@" | tr '\n' ' ')"
    fi
    
    # Execute claude command
    readarray -t cmd_array < <(build_claude_command "$@")
    exec "${cmd_array[@]}"
}

# Only run main if script is executed directly
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main "$@"
fi