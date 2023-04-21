public class prime {
	private static boolean isprime(long l) {
		long t = (long) Math.sqrt(l);
		for (long i=2; i<=t; i++) {
			if (l % i == 0)
				return false;
		}
		return true;
	}

	public static void main(String[] args) {
		if (args.length != 1)
			return;
		long target = Long.parseLong(args[0]);
		long cnt = 0;
		for (long l=2; l<target; l++) {
			if (isprime(l))
				cnt++;
		}
		System.out.println(cnt);
	}
}
