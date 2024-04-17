#!/bin/bash

# Help function
help_function() {
    echo "Usage: ./git_log_script.sh [OPTIONS]"
    echo "Options:"
    echo "  -s, --start-date    Start date for Git log (format: YYYY-MM-DD)"
    echo "  -e, --end-date      End date for Git log (format: YYYY-MM-DD)"
    echo "  -o, --output-file   Output file path"
    echo "  -h, --help          Display this help message"
}

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -s|--start-date)
            START_DATE="$2"
            shift
            shift
            ;;
        -e|--end-date)
            END_DATE="$2"
            shift
            shift
            ;;
        -o|--output-file)
            OUTPUT_FILE="$2"
            shift
            shift
            ;;
        -h|--help)
            help_function
            exit 0
            ;;
        *)
            echo "Invalid option: $1"
            help_function
            exit 1
            ;;
    esac
done

# Check if required arguments are provided
if [[ -z $START_DATE || -z $END_DATE || -z $OUTPUT_FILE ]]; then
    echo "Error: Missing required arguments."
    help_function
    exit 1
fi

# Run the Git log command
git --no-pager log --since="$START_DATE" --until="$END_DATE" --pretty=format:"%cn, %h, %cd" > "$OUTPUT_FILE"

# Count the number of lines in the output file
line_count=$(wc -l < "$OUTPUT_FILE")
echo "Number of lines in $OUTPUT_FILE: $line_count"
