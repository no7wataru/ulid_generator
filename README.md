# ULID Generator CLI

## Description

A simple command-line tool to generate ULIDs (Universally Unique Lexicographically Sortable Identifiers).

## Requirements

- Go (version 1.18 or later recommended)

## Build

To build the executable:

```sh
go build -o ulid
```

This will create an executable file named `ulid` in the current directory.

## Usage

To generate ULIDs:

```sh
./ulid [-n count]
```

**Options:**

- `-n count`: Specifies the number of ULIDs to generate. If omitted, it defaults to 1. `count` must be an integer greater than 0.
- `-h`, `--help`: Show help message.

## Examples

Generate a single ULID:
```sh
./ulid
```

Generate 5 ULIDs:
```sh
./ulid -n 5
```

Show help:
```sh
./ulid -h

