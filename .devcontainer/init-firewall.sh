#!/bin/bash

# Initialize firewall for Claude Code development environment
# This script sets up basic firewall rules for the development container

echo "Initializing firewall configuration..."

# Check if iptables is available
if command -v iptables >/dev/null 2>&1; then
    echo "Setting up iptables rules..."
    
    # Allow loopback traffic
    sudo iptables -A INPUT -i lo -j ACCEPT
    sudo iptables -A OUTPUT -o lo -j ACCEPT
    
    # Allow established connections
    sudo iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
    
    # Allow common development ports
    sudo iptables -A INPUT -p tcp --dport 3000 -j ACCEPT  # Common dev server
    sudo iptables -A INPUT -p tcp --dport 8000 -j ACCEPT  # Common dev server
    sudo iptables -A INPUT -p tcp --dport 8080 -j ACCEPT  # Common dev server
    sudo iptables -A INPUT -p tcp --dport 5000 -j ACCEPT  # Common dev server
    
    echo "Firewall rules initialized successfully"
else
    echo "iptables not available, skipping firewall setup"
fi

# Ensure Claude Code CLI is properly configured
if command -v claude-code >/dev/null 2>&1; then
    echo "Claude Code CLI is available"
else
    echo "Claude Code CLI not found, please check installation"
fi

# Initialize the project if CLAUDE.md doesn't exist
if [ ! -f "/workspace/CLAUDE.md" ]; then
    echo "Creating initial CLAUDE.md for autonomous development..."
    cat > /workspace/CLAUDE.md << 'EOF'
# Claude Code Autonomous Development Configuration

This project is configured for autonomous development with Claude Code.

## Development Workflow
1. Use `/init` to set up project-specific configuration
2. Provide requirements and Claude will use the agent system to deliver
3. Agents will handle: Architecture → Development → Testing → Quality Review

## Available Agents
- **architect**: Analyzes and designs solutions
- **developer**: Implements code with tests
- **debugger**: Investigates and fixes issues  
- **quality-reviewer**: Reviews code quality and security
- **technical-writer**: Creates documentation

## Auto-execution Mode
- Claude Code will work systematically through requirements
- Quality gates ensure tested, working code
- Safe development environment with firewall protection

Run `/init` to customize this configuration for your specific project.
EOF
    echo "Initial CLAUDE.md created"
fi

echo "Development environment initialization complete!"