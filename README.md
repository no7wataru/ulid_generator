# ULID Generator CLI

## Description

A simple command-line tool to generate ULIDs (Universally Unique Lexicographically Sortable Identifiers).

## Requirements

- Go (version 1.18 or later recommended)

## Build

To build the executable:

```sh
go build -o ulidgen
```

This will create an executable file named `ulidgen` in the current directory.

## Usage

To generate ULIDs:

```sh
./ulidgen [-n count]
```

**Options:**

- `-n count`: Specifies the number of ULIDs to generate. If omitted, it defaults to 1. `count` must be an integer greater than 0.
- `-h`, `--help`: Show help message.

## Examples

Generate a single ULID:
```sh
./ulidgen
```

Generate 5 ULIDs:
```sh
./ulidgen -n 5
```

Show help:
```sh
./ulidgen -h
```

## Raycast Integration

This project includes a script `raycast-ulidgen.sh` to integrate `ulidgen` with Raycast for quick ULID generation.

### Prerequisites

1.  **Build `ulidgen`**: Ensure you have built the `ulidgen` executable as described in the [Build](#build) section. The `ulidgen` binary must be in the same directory as `raycast-ulidgen.sh`.
2.  **Make Script Executable**: Make the `raycast-ulidgen.sh` script executable:
    ```sh
    chmod +x raycast-ulidgen.sh
    ```

### Setup Steps

1.  **Open Raycast Preferences**: Go to `Raycast Preferences > Extensions`.
2.  **Add Script Directory**: Click the "+" button in the bottom left and select "Add Script Directory".
3.  **Select Directory**: Navigate to and select the directory containing `raycast-ulidgen.sh` (e.g., `/path/to/your/ulid_generator` directory).
4.  **Configure Script (Optional)**:
    *   Once added, you should see "Generate ULID" (or the title you set in the script) in your list of script commands.
    *   You can assign an alias (e.g., `ulid`) for quicker access.
    *   The script accepts an optional argument for the number of ULIDs to generate.

### Usage in Raycast

1.  Open Raycast.
2.  Type the alias you assigned (or "Generate ULID").
3.  Optionally, type a number to specify how many ULIDs to generate (e.g., `ulid 5`).
4.  Press Enter. The ULIDs will be copied to your clipboard, and a confirmation message will appear.
