import std.stdio;

size_t[] answer() {
	import std.array;
	import std.algorithm;
	import std.uni;

	string given = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.";
	return given.split(" ").map!(w => w.count!(isAlpha)).array;
}


void main()
{
	writeln(answer());
}
