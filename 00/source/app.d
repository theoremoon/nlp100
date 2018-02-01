import std.stdio;

string answer() {
	import std.range, std.array, std.conv;
	return "stressed".retro.array.to!string;
}

void main()
{
	writeln(answer());
}
