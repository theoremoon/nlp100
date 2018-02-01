import std.stdio;


string cipher(string src)
{
	import std.algorithm;
	import std.array;
	import std.uni;

	return src.map!((dchar c) => (c.isAlpha && c.isLower) ? cast(char)(219 - c) : cast(char)c).array;
}


void main()
{
	auto src = "Hello World";
	writeln("src: ", src);
	writeln("crypted: ", cipher(src));
	writeln("decrypted: ", cipher(cipher(src)));
}
