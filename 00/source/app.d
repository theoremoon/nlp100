import std.stdio;

char[] answer() {
	import std.algorithm;
	char[] str = "stressed".dup;
	reverse(str);
	return str;
}

void main()
{
	writeln(answer());
}
