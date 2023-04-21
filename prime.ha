use fmt;
use os;
use math;
use strconv;

fn isprime(l: i64) bool = {
	let t = math::sqrtf64(l: f64): i64;
	for (let i=2; i<=t; i+=1) {
		if (l%i == 0) {
			return false;
		};
	};
	return true;
};

export fn main() void = {
	if (len(os::args) != 2) {
		return;
	};
	let target = strconv::stoi(os::args[1])!;
	let cnt = 0;
	for (let i=2; i<target; i+=1) {
		if (isprime(i)) {
			cnt += 1;
		};
	};
	fmt::println(cnt)!;
};
