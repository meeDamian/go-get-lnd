package main

import "github.com/lightningnetwork/lnd"

func main() {
	err := lnd.Main()
	if err != nil {
		panic(err)
	}
}
