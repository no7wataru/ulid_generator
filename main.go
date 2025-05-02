package main

import (
	"crypto/rand"
	"flag"
	"fmt"
	"os"
	"time"

	"github.com/oklog/ulid/v2"
)

func main() {
	count := flag.Int("n", 1, "number of ULIDs to generate")
	flag.Parse()

	if *count < 1 {
		fmt.Fprintf(os.Stderr, "Error: count (-n) must be greater than 0\n")
		os.Exit(1)
	}

	entropy := ulid.Monotonic(rand.Reader, 0)

	for i := 0; i < *count; i++ {
		id := ulid.MustNew(ulid.Timestamp(time.Now()), entropy)
		fmt.Println(id.String())
	}
}
