import std.stdio;

char[] answer() {
	import std.array : split, array, join;
	import std.algorithm : map, count;
	import std.uni : isAlpha;
	import std.conv;

	auto sentence = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.";

	return sentence.split(" ").map!((w) => w.count!(isAlpha)).array.to!(string[]).join(" ").dup;
	
}
void main()
{
	writeln(answer());
}
