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
