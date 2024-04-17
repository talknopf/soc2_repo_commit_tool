# Git Log Script

This script generates a Git log for a specified date range and counts the number of lines in the output file.

## Usage

```bash
./git_log_script.sh -s START_DATE -e END_DATE -o OUTPUT_FILE
```

Options:

- `-s, --start-date`: Start date for Git log (format: YYYY-MM-DD)
- `-e, --end-date`: End date for Git log (format: YYYY-MM-DD)
- `-o, --output-file`: Output file path
- `-h, --help`: Display help message

Example:

```bash
./git_log_script.sh -s 2024-02-01 -e 2024-04-17 -o ~/Desktop/soc2_social_services_commits.csv
```

This will generate a Git log for the specified date range and save it to the `soc2_social_services_commits.csv` file on your desktop, as well as display the number of lines in the output file.

## Requirements

- Git
- Bash

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
