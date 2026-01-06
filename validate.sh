#!/bin/bash

# Gf-Patterns JSON Validation Script
# Validates all .json pattern files in the current directory

echo "Validating Gf-Patterns JSON files..."

FAILED=0
PASSED=0

for file in *.json; do
    if [ -f "$file" ]; then
        echo -n "Checking $file... "

        # Check if valid JSON using python
        if python3 -c "import json; json.load(open('$file'))" 2>/dev/null; then
            echo "✓ Valid JSON"
            ((PASSED++))
        else
            echo "✗ Invalid JSON"
            ((FAILED++))
        fi
    fi
done

echo ""
echo "Validation complete:"
echo "  Passed: $PASSED"
echo "  Failed: $FAILED"

if [ $FAILED -gt 0 ]; then
    exit 1
fi

exit 0
