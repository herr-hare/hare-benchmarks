package main

import (
	"math"
	"os"
	"strconv"
	"fmt"
)

func isprime(l int64) bool {
	t := int64(math.Sqrt(float64(l)))
	for i := int64(2); i<=t; i++ {
		if l % i == 0 {
			return false
		}
	}
	return true
}

func main() {
	if len(os.Args) != 2 {
		return;
	}
	target, err := strconv.ParseInt(os.Args[1], 10, 64)
	if err != nil {
		return;
	}
	cnt := int64(0)
	for i:=int64(2); i<=target; i++ {
		if isprime(i) {
			cnt++
		}
	}
	fmt.Println(cnt)
}
